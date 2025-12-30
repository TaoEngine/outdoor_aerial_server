import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:outdoor_aerial_server/data/base/database_episode.dart';
import 'package:outdoor_aerial_server/data/base/database_program.dart';
import 'package:outdoor_aerial_server/data/base/database_station.dart';
import 'package:outdoor_aerial_server/data/model/datamodel_status.dart';
import 'package:outdoor_aerial_server/data/model/datamodel_type.dart';
import 'package:outdoor_aerial_server/data/model/datamodel_weekday.dart';

part 'database.g.dart';

@DriftDatabase(tables: [RadioStationDB, ProgramDB, EpisodeDB])
class ServerDatabase extends _$AppDatabase {
  ServerDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

QueryExecutor _openConnection() {
  return LazyDatabase(() async {
    final file = File('server.db');
    return NativeDatabase(file);
  });
}
