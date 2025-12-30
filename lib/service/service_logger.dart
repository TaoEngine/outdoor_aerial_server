import 'dart:io';

import 'package:logging/logging.dart';
import 'package:shelf/shelf.dart';

/// 日志服务，负责初始化日志配置并提供中间件
class ServiceLogger {
  static final Logger _logger = Logger('Main');
  static IOSink? _fileSink;

  /// 初始化日志配置
  static void init({String logFilePath = 'server.log'}) {
    // 设置全局日志级别
    Logger.root.level = Level.INFO;

    // 打开日志文件以追加模式写入
    try {
      _fileSink = File(logFilePath).openWrite(mode: FileMode.append);
    } catch (e) {
      print('无法打开日志文件: $e');
    }

    // 监听日志记录并输出到控制台和文件
    Logger.root.onRecord.listen((record) {
      final buffer = StringBuffer()
        ..write('${record.time} ')
        ..write('[${record.level.name}] ')
        ..write('${record.loggerName}: ')
        ..write(record.message);

      if (record.error != null) {
        buffer.write('\nError: ${record.error}');
      }
      if (record.stackTrace != null) {
        buffer.write('\nStackTrace: ${record.stackTrace}');
      }

      final logMessage = buffer.toString();
      
      // 输出到控制台
      print(logMessage);
      
      // 写入文件
      _fileSink?.writeln(logMessage);
    });
  }

  /// 关闭日志文件流
  static Future<void> dispose() async {
    await _fileSink?.flush();
    await _fileSink?.close();
    _fileSink = null;
  }

  /// 获取用于 Shelf 的日志中间件
  static Middleware get middleware => logRequests(
        logger: (msg, isError) {
          if (isError) {
            _logger.severe(msg);
          } else {
            _logger.info(msg);
          }
        },
      );

  /// 获取主日志记录器
  static Logger get logger => _logger;
}
