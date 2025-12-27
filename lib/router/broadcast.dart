import 'dart:async';

import 'package:outdoor_aerial_server/service/service_broadcast.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';

final signal = BroadcastSignal(
  singalDevice: 'audio=麦克风 (Realtek(R) Audio)',
  signalSample: 44100,
  signalChannel: SignalChannel.stereo,
);

FutureOr<Response> broadcastHandler(Request bundleUri) {
  return webSocketHandler((webSocket, _) async {
    final subscription = signal.stream.listen(
      (signal) => webSocket.sink.add(signal),
      onError: (e) => print,
      onDone: () => webSocket.sink.close(),
    );
    webSocket.stream.listen(
      (_) {},
      onDone: () {
        print('客户端断开');
        subscription.cancel();
      },
    );
  })(bundleUri);
}
