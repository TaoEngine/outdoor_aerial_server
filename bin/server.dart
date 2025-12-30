import 'dart:io';

import 'package:outdoor_aerial_server/middleware/middleware_riverpod.dart';
import 'package:outdoor_aerial_server/router/router_broadcast.dart';
import 'package:outdoor_aerial_server/router/router_episode.dart';
import 'package:outdoor_aerial_server/router/router_program.dart';
import 'package:outdoor_aerial_server/router/router_root.dart';
import 'package:outdoor_aerial_server/router/router_station.dart';
import 'package:outdoor_aerial_server/service/service_logger.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

/// Outdoor Aerial 服务器的相关路由
final _router = Router()
  // Web 应用代理
  ..get('/', rootHandler)
  // 广播电台仓库
  ..get('/station', stationHandler)
  // 电台界面仓库
  ..get('/program', programHandler)
  // 今日节目仓库
  ..get('/episode', episodeHandler)
  // 广播音频信号
  ..get('/broadcast', broadcastHandler);

/// Outdoor Aerial 服务器的状态管理模块
final _provider = ProviderContainer();

void main() async {
  // 初始化日志服务
  ServiceLogger.init();
  ServiceLogger.logger.info('Outdoor Aerial 服务器运行中...');

  final handler = Pipeline()
      .addMiddleware(ServiceLogger.middleware)
      .addMiddleware(riverpodMiddleware(_provider))
      .addHandler(_router.call);
  final address = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['SERVER_PORT'] ?? '8908');

  await serve(handler, address, port);
}
