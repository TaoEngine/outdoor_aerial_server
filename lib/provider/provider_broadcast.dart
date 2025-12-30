import 'dart:typed_data';

import 'package:logging/logging.dart';
import 'package:outdoor_aerial_server/service/service_broadcast.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider_broadcast.g.dart';

@riverpod
class Broadcast extends _$Broadcast {
  final _logger = Logger('Broadcast.Provider');

  @override
  Stream<Uint8List> build(BroadcastServiceConfig config) {
    final service = BroadcastService(config: config);
    return _broadcast(service);
  }

  Stream<Uint8List> _broadcast(BroadcastService service) async* {
    state = AsyncValue.loading();

    ref.onDispose(() {
      _logger.info('没有客户端与服务器建立连接了，正在彻底结束广播音频服务');
      service.stop();
    });

    yield* service.broadcast().handleError((error, stackTrace) {
      _logger.severe('广播服务发生严重错误', error, stackTrace);
      state = AsyncValue.error(error, stackTrace);
    });
  }
}
