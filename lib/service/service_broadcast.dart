import 'dart:async';
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

  /// ffmpeg进程
  static Process? _process;

  /// 广播信号控制器
  static StreamController<Uint8List>? _controller;

  /// 目前连接客户端的个数
  static int _clientCount = 0;

  /// 接收广播信号
  Stream<Uint8List> get stream {
    _controller ??= StreamController.broadcast(
      onListen: _startProcess,
      onCancel: _cancelProcess,
    );
    return _controller!.stream;
  }

  /// 开始进行推送信号
  void _startProcess() async {
    _clientCount++;

    // 配置音频平台
    final String format;
    if (Platform.isWindows) {
      format = 'dshow';
    } else {
      format = 'pulse';
    }

    // 设置声道
    final String channel = switch (signalChannel) {
      SignalChannel.mono => '1',
      SignalChannel.stereo => '2',
    };

    _process = await Process.start('ffmpeg', [
      '-nostdin',
      '-f',
      format,
      '-i',
      singalDevice,
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

    // 转发日志
    _process!.stderr.listen((List<int> data) {
      String log = systemEncoding.decode(data);
      print('FFmpeg 日志: $log');
    });

    // 推送音频
    _process!.stdout.listen(
      (List<int> signal) {
        _controller!.add(Uint8List.fromList(signal));
      },
      onDone: () => _cleanProcess(),
      onError: (e) => print(e),
    );
  }

  // 停止进行推送信号
  void _cancelProcess() {
    _clientCount--;
    if (_clientCount <= 0) {
      _clientCount = 0;
      _cleanProcess();
    }
  }

  // 清除 ffmpeg 进程
  void _cleanProcess() {
    if (_process != null) {
      _process?.kill();
      _process = null;
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
