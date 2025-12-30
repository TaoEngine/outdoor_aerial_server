import 'dart:async';
import 'dart:io';

import 'package:outdoor_aerial_server/proto/build/dataproto_station.pb.dart';
import 'package:outdoor_aerial_server/proto/build/dataproto_status.pb.dart';
import 'package:outdoor_aerial_server/proto/build/dataproto_type.pb.dart';
import 'package:outdoor_aerial_server/proto/build/google/type/timeofday.pb.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';

final stations = [
  RadioStationPB(
    id: 912904124,
    logo: File('./asset/ah929.png').readAsBytesSync(),
    banner: File('./asset/ah929_full.png').readAsBytesSync(),
    frequency: 92.9,
    name: '安徽生活广播',
    description: '听出无限欢乐，我要我的生活',
    institution: '安徽广播电视台',
    language: 'zh_CN',
    social: 'https://www.ahrtv.cn',
    like: true,
    start: TimeOfDay(hours: 5, minutes: 0),
    end: TimeOfDay(hours: 23, minutes: 0),
    type: StationTypePB.INTERGRATED,
    status: StationStatusPB.ONAIR,
  ),
  RadioStationPB(
    id: 932882343,
    logo: File('./asset/ah908.png').readAsBytesSync(),
    banner: File('./asset/ah908.png').readAsBytesSync(),
    frequency: 90.8,
    name: '安徽交通广播',
    description: 'One FM 90.8 安徽广播第一品牌',
    institution: '安徽广播电视台',
    language: 'zh_CN',
    social: 'https://www.ahrtv.cn',
    like: true,
    start: TimeOfDay(hours: 0, minutes: 0),
    end: TimeOfDay(hours: 24, minutes: 0),
    type: StationTypePB.TRAFFIC,
    status: StationStatusPB.ONAIR,
  ),
  RadioStationPB(
    id: 932432435,
    logo: File('./asset/ah895.png').readAsBytesSync(),
    banner: File('./asset/ah895.png').readAsBytesSync(),
    frequency: 90.8,
    name: '安徽音乐广播',
    description: '畅想我的895，你的精选调频',
    institution: '安徽广播电视台',
    language: 'zh_CN',
    social: 'https://www.ahrtv.cn',
    like: true,
    start: TimeOfDay(hours: 0, minutes: 0),
    end: TimeOfDay(hours: 24, minutes: 0),
    type: StationTypePB.MUSIC,
    status: StationStatusPB.ONAIR,
  ),
];

FutureOr<Response> stationHandler(Request request) {
  return webSocketHandler((webSocket, _) async {
    for (RadioStationPB station in stations) {
      final bytes = station.writeToBuffer();
      webSocket.sink.add(bytes);
      await Future.delayed(Duration(seconds: 2));
    }
    webSocket.stream.listen((msg) {});
  })(request);
}
