import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'service_broadcast.g.dart';

/// 接收广播音频
@riverpod
class BroadcastService extends _$BroadcastService {
  final _logger = Logger('BroadcastService');

  @override
  Stream<Uint8List> build(BroadcastConfig config) {
    return _broadcast(config);
  }

  Stream<Uint8List> _broadcast(BroadcastConfig config) async* {
    state = AsyncLoading();

    // 配置音频平台
    final String format;
    if (Platform.isWindows) {
      format = 'dshow';
    } else {
      format = 'pulse';
    }
    final String channel = switch (config.signalChannel) {
      SignalChannel.mono => '1',
      SignalChannel.stereo => '2',
    };

    final arguments = [
      '-nostdin',
      '-f',
      (format),
      '-i',
      (config.inputDevice),
      '-f',
      's16le',
      '-acodec',
      'pcm_s16le',
      '-ar',
      (config.sampleRate.toString()),
      '-ac',
      (channel),
      '-',
    ];

    final process = await Process.start('ffmpeg', arguments);

    bool isDisposed = false;

    // 无客户端请求广播音频时摧毁 ffmpeg 进程
    ref.onDispose(() {
      _logger.info('没有客户端与服务器建立连接了，正在彻底结束广播音频服务');
      process.kill();
      isDisposed = true;
    });

    // 读取 ffmpeg 的相关日志
    process.stderr.listen((ffmpeg) {
      if (!isDisposed) {
        _logger.fine('同步 FFmpeg 的日志\n${systemEncoding.decode(ffmpeg)}');
      }
    });

    // 走完 ffmpeg 的一个生命周期
    process.exitCode.then((code) {
      if (isDisposed) return;
      if (code != 0) {
        state = AsyncError(
          ProcessException('ffmpeg', arguments, 'FFmpeg 遭遇异常退出', code),
          StackTrace.current,
        );
      }
    });

    // 主要任务是读取 ffmpeg 的广播音频流
    yield* process.stdout.map((signal) => Uint8List.fromList(signal));
  }
}

/// 广播音频的声道数
enum SignalChannel {
  /// 单声道
  mono,

  /// 立体声
  stereo,
}

class BroadcastConfig {
  /// 接收广播音频的输入
  final String inputDevice;

  /// 广播音频的采样率
  final int sampleRate;

  /// 广播音频的声道数
  final SignalChannel signalChannel;

  /// 广播音频相关参数
  BroadcastConfig({
    required this.inputDevice,
    required this.sampleRate,
    required this.signalChannel,
  });
}
