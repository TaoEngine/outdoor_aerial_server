import 'package:shelf/shelf.dart';
import 'package:riverpod/riverpod.dart';

/// Riverpod 在 Shelf 的中间件
Middleware riverpodMiddleware(ProviderContainer container) =>
    (Handler innerHandler) => (Request request) {
      final updatedRequest = request.change(context: {'riverpod': container});
      return innerHandler(updatedRequest);
    };

/// 方便获取 Container 的扩展方法
extension RiverpodRequestContext on Request {
  ProviderContainer get container => context['riverpod'] as ProviderContainer;
}