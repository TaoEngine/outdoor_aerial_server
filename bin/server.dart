import 'dart:io';

import 'package:logging/logging.dart';
import 'package:outdoor_aerial_server/middleware/middleware_riverpod.dart';
import 'package:riverpod/riverpod.dart';
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

final _logger = Logger('HTTP');

final _provider = ProviderContainer();

final _handler = Pipeline()
    .addMiddleware(
      logRequests(
        logger: (msg, isError) {
          if (isError) {
            _logger.severe(msg);
          } else {
            _logger.info(msg);
          }
        },
      ),
    )
    .addMiddleware(riverpodMiddleware(_provider))
    .addHandler(_router.call);

void main() async {
  Logger.root.level = Level.ALL;
  // 监听日志记录并输出到控制台
  Logger.root.onRecord.listen((record) {
    print(
      '${record.time} [${record.level.name}] ${record.loggerName}: ${record.message}',
    );
    if (record.error != null) {
      print('Error: ${record.error}');
    }
    if (record.stackTrace != null) {
      print('StackTrace: ${record.stackTrace}');
    }
  });

  final address = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['SERVER_PORT'] ?? '8908');
  await serve(_handler, address, port);
  _logger.info('Outdoor Aerial 服务器已成功运行');
}
