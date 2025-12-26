import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';

FutureOr<Response> broadcastHandler(Request bundleUri) {
  return webSocketHandler((webSocket, _) async {

  })(bundleUri);
}