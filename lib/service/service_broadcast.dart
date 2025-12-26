import 'dart:io';
import 'dart:typed_data';

class BroadcastSignal {
  /// 接收输入
  final String singalDevice;

  /// 采样率设置
  final int signalSample;

  /// 声道设置
  final SignalChannel signalChannel;

  /// TODO 编码设置还没写，搞两个比如PCM和OPUS

  /// 广播信号接收类
  BroadcastSignal({
    required this.singalDevice,
    required this.signalSample,
    required this.signalChannel,
  });

  /// 接收广播信号
  Stream<Uint8List> receive() async* {
    // 平台配置
    final String format;
    if (Platform.isWindows) {
      format = 'dshow';
    } else {
      format = 'pulse';
    }

    final String channel = switch (signalChannel) {
      SignalChannel.mono => '1',
      SignalChannel.stereo => '2',
    };

    final process = await Process.start('ffmpeg', [
      '-i',
      singalDevice,
      '-f',
      format,
      '-f',
      's16le',
      '-acodec',
      'pcm_s16le',
      '-ar',
      "$signalSample",
      '-ac',
      channel,
      '-',
    ]);

    // 广播数据传出
    await for (final signal in process.stdout) {
      Uint8List signalChunk = Uint8List.fromList(signal);
      yield signalChunk;
    }

    // 错误显示日志
    process.stderr.listen((List<int> data) {
      String log = systemEncoding.decode(data);
      print('FFmpeg 日志: $log');
    });

    final exitCode = await process.exitCode;
    if (exitCode != 0) {
      print('FFmpeg 进程退出码: $exitCode');
    }
  }
}

/// 广播信号的声道数
enum SignalChannel {
  /// 单声道
  mono,

  /// 立体声
  stereo,
}
