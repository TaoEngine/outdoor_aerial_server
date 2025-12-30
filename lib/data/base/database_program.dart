import 'dart:convert';
import 'package:drift/drift.dart';

import '../model/datamodel_status.dart';
import '../model/datamodel_type.dart';
import '../model/datamodel_weekday.dart';
import 'database_station.dart';

class ProgramDB extends Table {
  /// Outdoor Aerial 服务器分配给电台节目的 id
  IntColumn get id => integer()();

  /// 该电台节目隶属广播电台
  IntColumn get studio => integer().references(RadioStationDB, #id)();

  /// 该电台节目的名称
  TextColumn get name => text()();

  /// 对该电台节目的长文本介绍（可选）
  TextColumn get description => text().nullable()();

  /// 用户是否喜欢该电台节目
  BoolColumn get like => boolean().nullable()();

  /// 电台节目的类型
  IntColumn get type => intEnum<ProgramType>()();

  /// 电台当前的播出状态
  IntColumn get status => intEnum<ProgramStatus>()();

  /// 电台节目的固定播出时间
  TextColumn get start => text()();

  /// 电台节目的固定结束时间
  TextColumn get end => text()();

  /// 该电台节目的主持人阵容
  TextColumn get hosts => text().map(const StringListConverter())();

  /// 电台节目的固定播出日期
  TextColumn get weekday => text().map(const WeekdayListConverter())();

  @override
  Set<Column> get primaryKey => {id};
}

class StringListConverter extends TypeConverter<List<String>, String> {
  const StringListConverter();
  @override
  List<String> fromSql(String fromDb) {
    return (json.decode(fromDb) as List).cast<String>();
  }
  @override
  String toSql(List<String> value) {
    return json.encode(value);
  }
}

class WeekdayListConverter extends TypeConverter<List<ProgramWeekday>, String> {
  const WeekdayListConverter();
  @override
  List<ProgramWeekday> fromSql(String fromDb) {
    final list = json.decode(fromDb) as List;
    return list.map((e) => ProgramWeekday.values[e as int]).toList();
  }
  @override
  String toSql(List<ProgramWeekday> value) {
    return json.encode(value.map((e) => e.index).toList());
  }
}
