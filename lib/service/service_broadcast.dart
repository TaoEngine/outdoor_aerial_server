import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:logging/logging.dart';

class BroadcastService {
  /// 广播音频配置
  final BroadcastServiceConfig config;

  /// 接收广播音频
  BroadcastService({required this.config});

  /// 广播音频服务日志记录
  final Logger _logger = Logger('Broadcast.Service');

  /// 广播音频编码方式
  late final String _acodec;

  /// 广播音频声道数
  late final String _channel;

  /// 广播音频输出格式
  late final String _format;

  /// 广播音频输入源
  late final String _input;

  /// 广播音频输入平台
  late final String _platform;

  /// 广播音频采样率
  late final String _sample;

  /// ffmpeg 进程
  Process? _process;

  /// 配置广播音频编码方式
  void _acodecConfig() {
    final String coding = switch (config.acodec) {
      BroadcastAcodec.pcm => 'pcm_',
      BroadcastAcodec.opus => 'libopus',
    };
    final String args = switch (config.acodec) {
      BroadcastAcodec.pcm => switch (config.format) {
        BroadcastFormat.bit16 => 's16le',
        BroadcastFormat.bit24 => 's24le',
        BroadcastFormat.bit32 => 's32le',
      },
      BroadcastAcodec.opus => '',
    };
    _acodec = coding + args;
  }

  /// 配置广播音频声道数
  void _channelConfig() {
    _channel = switch (config.channel) {
      BroadcastChannel.mono => '1',
      BroadcastChannel.stereo => '2',
    };
  }

  /// 配置广播音频输出格式
  void _formatConfig() {
    _format = switch (config.acodec) {
      BroadcastAcodec.pcm => switch (config.format) {
        BroadcastFormat.bit16 => 's16le',
        BroadcastFormat.bit24 => 's24le',
        BroadcastFormat.bit32 => 's32le',
      },
      BroadcastAcodec.opus => 'opus',
    };
  }

  /// 配置广播音频输入源
  void _inputConfig() => _input = config.input;

  /// 配置广播音频输入平台
  void _platformConfig() {
    if (Platform.isWindows) {
      _platform = 'dshow';
    } else if (Platform.isMacOS) {
      _platform = 'avfoundation';
    } else if (Platform.isLinux) {
      _platform = 'alsa';
    } else {
      throw FormatException('抱歉该设备不支持广播音频输入');
    }
  }

  /// 配置广播音频采样率
  void _sampleConfig() {
    _sample = switch (config.sample) {
      BroadcastSample.sample32000 => '32000',
      BroadcastSample.sample44100 => '44100',
      BroadcastSample.sample48000 => '48000',
      BroadcastSample.sample96000 => '96000',
    };
  }

  /// 生成 ffmpeg 配置
  List<String> _ffmpegArguments() => [
    '-nostdin',
    '-f',
    (_platform),
    '-i',
    (_input),
    '-f',
    (_format),
    '-acodec',
    (_acodec),
    '-ar',
    (_sample),
    '-ac',
    (_channel),
    '-',
  ];

  /// 接通广播音频
  Stream<Uint8List> broadcast() async* {
    _platformConfig();
    _acodecConfig();
    _formatConfig();
    _sampleConfig();
    _channelConfig();
    _inputConfig();

    final arguments = _ffmpegArguments();
    _logger.info('正在启动 FFmpeg 服务');

    try {
      _process = await Process.start('ffmpeg', arguments);
    } catch (e) {
      _logger.severe('无法启动 FFmpeg');
      rethrow;
    }

    final process = _process!;

    // 读取 ffmpeg 的相关日志
    process.stderr.listen((ffmpeg) {
      _logger.fine('同步 FFmpeg 的日志\n${systemEncoding.decode(ffmpeg)}');
    });

    // 主要任务是读取 ffmpeg 的广播音频流
    yield* process.stdout.map((signal) => Uint8List.fromList(signal));

    // 检查退出码
    final exitCode = await process.exitCode;
    if (exitCode != 0) {
      _logger.severe('FFmpeg 异常退出了，返回 $exitCode');
      throw ProcessException('ffmpeg', arguments, 'FFmpeg 遭遇异常退出', exitCode);
    }
  }

  /// 终止 ffmpeg 停止音频
  void stop() {
    _logger.info('接收到杀死 FFmpeg 进程命令');
    if (_process != null) {
      _process?.kill();
      _process = null;
    } else {
      _logger.warning('FFmpeg 进程尚未启动');
    }
  }
}

class BroadcastServiceConfig {
  /// 广播音频编码方式
  final BroadcastAcodec acodec;

  /// 广播音频声道数
  final BroadcastChannel channel;

  /// 广播音频输出格式
  final BroadcastFormat format;

  /// 广播音频输入源
  final String input;

  /// 广播音频采样率
  final BroadcastSample sample;

  /// 广播音频的配置
  BroadcastServiceConfig({
    required this.acodec,
    required this.channel,
    required this.format,
    required this.input,
    required this.sample,
  });
}

/// 广播音频的声道数
enum BroadcastChannel {
  /// 单声道
  mono,

  /// 立体声
  stereo,
}

/// 广播音频的编码方式
enum BroadcastAcodec {
  /// PCM 未编码音频
  pcm,

  /// OPUS 现代编码音频
  opus,
}

/// 广播音频的采样方式
enum BroadcastFormat {
  /// 16 Bit
  bit16,

  /// 24 Bit
  bit24,

  /// 32 Bit
  bit32,
}

/// 广播音频的采样率
enum BroadcastSample {
  /// 32000
  sample32000,

  /// 44100
  sample44100,

  /// 48000
  sample48000,

  /// 96000
  sample96000,
}
