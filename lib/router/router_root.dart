import 'package:shelf/shelf.dart';

Response rootHandler(Request req) {
  return Response(
    501,
    headers: {
      'Content-Type': 'text/html; charset=UTF-8',
      'Server': 'Outdoor Aerial Server',
    },
    body:
        '<p>抱歉，这个服务器并未安装 Outdoor Aerial 的任意一个客户端，所以会显示这篇说明。</p><p>试着参照这个文档解决此问题：<br/>https://github.com/TaoEngine/outdoor_aerial_server/wiki/935</p>',
  );
}
