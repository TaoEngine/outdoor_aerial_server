import 'dart:async';

import 'package:logging/logging.dart';
import 'package:outdoor_aerial_server/middleware/middleware_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';

import 'package:outdoor_aerial_server/service/service_broadcast.dart';

final config = BroadcastConfig(
  inputDevice: 'audio=麦克风 (Realtek(R) Audio)',
  sampleRate: 44100,
  signalChannel: SignalChannel.stereo,
);

final _logger = Logger('Router.Broadcast');

FutureOr<Response> broadcastHandler(Request request) {
  final container = request.container;

  return webSocketHandler((webSocket, _) async {
    _logger.info('有新的客户端加入服务');
    final subscription = container.listen(broadcastServiceProvider(config), (
      previous,
      next,
    ) {
      next.when(
        data: (signal) => webSocket.sink.add(signal),
        error: (error, stack) {
          _logger.severe(error);
          _logger.severe('广播音频流被意外切断，与客户端的连接将同时断开');
          webSocket.sink.close();
        },
        loading: () => _logger.info('正在启动广播音频服务'),
      );
    });
    webSocket.stream.listen(
      null,
      onDone: () {
        _logger.info('客户端与服务器的连接已断开');
        subscription.close();
      },
    );
  })(request);
}
