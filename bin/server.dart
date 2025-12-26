import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

import 'package:outdoor_aerial_server/router/broadcast.dart';
import 'package:outdoor_aerial_server/router/root.dart';
import 'package:outdoor_aerial_server/router/station.dart';

/// OutdoorAerial 服务器的相关路由
final _router = Router()
  // Web 应用代理
  ..get('/', rootHandler)
  // 广播电台仓库
  ..get('/station', stationHandler)
  // 电台界面仓库
  // ..get('/program', )
  // 今日节目仓库
  // ..get('/episode', )
  // 广播音频信号
  ..get('/broadcast', broadcastHandler);

final handler = Pipeline()
    .addMiddleware(logRequests())
    .addHandler(_router.call);

void main() async {
  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['SERVER_PORT'] ?? '8908');
  await serve(handler, ip, port);
  print('Outdoor Aerial 服务器已成功运行');
}
