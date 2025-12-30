import 'package:drift/drift.dart';
import 'database_program.dart';

class EpisodeDB extends Table {
  /// 本期电台节目隶属节目信息
  IntColumn get program => integer().references(ProgramDB, #id)();

  /// 本期电台节目的配图
  BlobColumn get cover => blob()();

  /// 本期电台节目的主题
  TextColumn get title => text()();

  /// 本期电台节目的摘要
  TextColumn get abstractText => text().named('abstract')();

  /// 用户是否收藏本期节目
  BoolColumn get favorite => boolean()();

  /// 本期电台节目的播出时间
  DateTimeColumn get time => dateTime()();

  @override
  Set<Column> get primaryKey => {program, time};
}
