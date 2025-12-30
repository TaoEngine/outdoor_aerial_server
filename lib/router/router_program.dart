import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';

FutureOr<Response> programHandler(Request request) {
  return webSocketHandler((webSocket, _) async {
    webSocket.stream.listen((msg) {});
  })(request);
}
