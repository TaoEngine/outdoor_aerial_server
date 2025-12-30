import 'package:drift/drift.dart';

import '../model/datamodel_status.dart';
import '../model/datamodel_type.dart';

class RadioStationDB extends Table {
  /// Outdoor Aerial 服务器分配给广播电台的 id
  IntColumn get id => integer()();

  /// 广播电台的 LOGO
  BlobColumn get logo => blob()();

  /// 广播电台的横幅
  BlobColumn get banner => blob()();

  /// 广播电台的频率
  RealColumn get frequency => real()();

  /// 该广播电台的名称
  TextColumn get name => text()();

  /// 对该广播电台的长文本介绍（可选）
  TextColumn get description => text().nullable()();

  /// 该广播电台所属单位
  TextColumn get institution => text()();

  /// 该广播电台的播出语言
  TextColumn get language => text()();

  /// 该广播电台拥有的社媒账号（可选）
  TextColumn get social => text().nullable()();

  /// 用户是否喜爱该广播电台
  BoolColumn get like => boolean().nullable()();

  /// 广播电台的开播时间
  TextColumn get start => text()();

  /// 广播电台的晚安时间
  TextColumn get end => text()();

  /// 广播电台的类型
  IntColumn get type => intEnum<StationType>()();

  /// 广播电台当前的播出状态
  IntColumn get status => intEnum<StationStatus>()();

  @override
  Set<Column> get primaryKey => {id};
}

