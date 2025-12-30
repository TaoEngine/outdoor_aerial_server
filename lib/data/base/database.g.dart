// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $RadioStationDBTable extends RadioStationDB
    with TableInfo<$RadioStationDBTable, RadioStationDBData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RadioStationDBTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _logoMeta = const VerificationMeta('logo');
  @override
  late final GeneratedColumn<Uint8List> logo = GeneratedColumn<Uint8List>(
    'logo',
    aliasedName,
    false,
    type: DriftSqlType.blob,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bannerMeta = const VerificationMeta('banner');
  @override
  late final GeneratedColumn<Uint8List> banner = GeneratedColumn<Uint8List>(
    'banner',
    aliasedName,
    false,
    type: DriftSqlType.blob,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _frequencyMeta = const VerificationMeta(
    'frequency',
  );
  @override
  late final GeneratedColumn<double> frequency = GeneratedColumn<double>(
    'frequency',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _institutionMeta = const VerificationMeta(
    'institution',
  );
  @override
  late final GeneratedColumn<String> institution = GeneratedColumn<String>(
    'institution',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _languageMeta = const VerificationMeta(
    'language',
  );
  @override
  late final GeneratedColumn<String> language = GeneratedColumn<String>(
    'language',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _socialMeta = const VerificationMeta('social');
  @override
  late final GeneratedColumn<String> social = GeneratedColumn<String>(
    'social',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _likeMeta = const VerificationMeta('like');
  @override
  late final GeneratedColumn<bool> like = GeneratedColumn<bool>(
    'like',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("like" IN (0, 1))',
    ),
  );
  static const VerificationMeta _startMeta = const VerificationMeta('start');
  @override
  late final GeneratedColumn<String> start = GeneratedColumn<String>(
    'start',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endMeta = const VerificationMeta('end');
  @override
  late final GeneratedColumn<String> end = GeneratedColumn<String>(
    'end',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<StationType, int> type =
      GeneratedColumn<int>(
        'type',
        aliasedName,
        false,
        type: DriftSqlType.int,
        requiredDuringInsert: true,
      ).withConverter<StationType>($RadioStationDBTable.$convertertype);
  @override
  late final GeneratedColumnWithTypeConverter<StationStatus, int> status =
      GeneratedColumn<int>(
        'status',
        aliasedName,
        false,
        type: DriftSqlType.int,
        requiredDuringInsert: true,
      ).withConverter<StationStatus>($RadioStationDBTable.$converterstatus);
  @override
  List<GeneratedColumn> get $columns => [
    id,
    logo,
    banner,
    frequency,
    name,
    description,
    institution,
    language,
    social,
    like,
    start,
    end,
    type,
    status,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'radio_station_d_b';
  @override
  VerificationContext validateIntegrity(
    Insertable<RadioStationDBData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('logo')) {
      context.handle(
        _logoMeta,
        logo.isAcceptableOrUnknown(data['logo']!, _logoMeta),
      );
    } else if (isInserting) {
      context.missing(_logoMeta);
    }
    if (data.containsKey('banner')) {
      context.handle(
        _bannerMeta,
        banner.isAcceptableOrUnknown(data['banner']!, _bannerMeta),
      );
    } else if (isInserting) {
      context.missing(_bannerMeta);
    }
    if (data.containsKey('frequency')) {
      context.handle(
        _frequencyMeta,
        frequency.isAcceptableOrUnknown(data['frequency']!, _frequencyMeta),
      );
    } else if (isInserting) {
      context.missing(_frequencyMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('institution')) {
      context.handle(
        _institutionMeta,
        institution.isAcceptableOrUnknown(
          data['institution']!,
          _institutionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_institutionMeta);
    }
    if (data.containsKey('language')) {
      context.handle(
        _languageMeta,
        language.isAcceptableOrUnknown(data['language']!, _languageMeta),
      );
    } else if (isInserting) {
      context.missing(_languageMeta);
    }
    if (data.containsKey('social')) {
      context.handle(
        _socialMeta,
        social.isAcceptableOrUnknown(data['social']!, _socialMeta),
      );
    }
    if (data.containsKey('like')) {
      context.handle(
        _likeMeta,
        like.isAcceptableOrUnknown(data['like']!, _likeMeta),
      );
    }
    if (data.containsKey('start')) {
      context.handle(
        _startMeta,
        start.isAcceptableOrUnknown(data['start']!, _startMeta),
      );
    } else if (isInserting) {
      context.missing(_startMeta);
    }
    if (data.containsKey('end')) {
      context.handle(
        _endMeta,
        end.isAcceptableOrUnknown(data['end']!, _endMeta),
      );
    } else if (isInserting) {
      context.missing(_endMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RadioStationDBData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RadioStationDBData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      logo: attachedDatabase.typeMapping.read(
        DriftSqlType.blob,
        data['${effectivePrefix}logo'],
      )!,
      banner: attachedDatabase.typeMapping.read(
        DriftSqlType.blob,
        data['${effectivePrefix}banner'],
      )!,
      frequency: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}frequency'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      institution: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}institution'],
      )!,
      language: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}language'],
      )!,
      social: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}social'],
      ),
      like: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}like'],
      ),
      start: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}start'],
      )!,
      end: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}end'],
      )!,
      type: $RadioStationDBTable.$convertertype.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}type'],
        )!,
      ),
      status: $RadioStationDBTable.$converterstatus.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}status'],
        )!,
      ),
    );
  }

  @override
  $RadioStationDBTable createAlias(String alias) {
    return $RadioStationDBTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<StationType, int, int> $convertertype =
      const EnumIndexConverter<StationType>(StationType.values);
  static JsonTypeConverter2<StationStatus, int, int> $converterstatus =
      const EnumIndexConverter<StationStatus>(StationStatus.values);
}

class RadioStationDBData extends DataClass
    implements Insertable<RadioStationDBData> {
  /// Outdoor Aerial 服务器分配给广播电台的 id
  final int id;

  /// 广播电台的 LOGO
  final Uint8List logo;

  /// 广播电台的横幅
  final Uint8List banner;

  /// 广播电台的频率
  final double frequency;

  /// 该广播电台的名称
  final String name;

  /// 对该广播电台的长文本介绍（可选）
  final String? description;

  /// 该广播电台所属单位
  final String institution;

  /// 该广播电台的播出语言
  final String language;

  /// 该广播电台拥有的社媒账号（可选）
  final String? social;

  /// 用户是否喜爱该广播电台
  final bool? like;

  /// 广播电台的开播时间
  final String start;

  /// 广播电台的晚安时间
  final String end;

  /// 广播电台的类型
  final StationType type;

  /// 广播电台当前的播出状态
  final StationStatus status;
  const RadioStationDBData({
    required this.id,
    required this.logo,
    required this.banner,
    required this.frequency,
    required this.name,
    this.description,
    required this.institution,
    required this.language,
    this.social,
    this.like,
    required this.start,
    required this.end,
    required this.type,
    required this.status,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['logo'] = Variable<Uint8List>(logo);
    map['banner'] = Variable<Uint8List>(banner);
    map['frequency'] = Variable<double>(frequency);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['institution'] = Variable<String>(institution);
    map['language'] = Variable<String>(language);
    if (!nullToAbsent || social != null) {
      map['social'] = Variable<String>(social);
    }
    if (!nullToAbsent || like != null) {
      map['like'] = Variable<bool>(like);
    }
    map['start'] = Variable<String>(start);
    map['end'] = Variable<String>(end);
    {
      map['type'] = Variable<int>(
        $RadioStationDBTable.$convertertype.toSql(type),
      );
    }
    {
      map['status'] = Variable<int>(
        $RadioStationDBTable.$converterstatus.toSql(status),
      );
    }
    return map;
  }

  RadioStationDBCompanion toCompanion(bool nullToAbsent) {
    return RadioStationDBCompanion(
      id: Value(id),
      logo: Value(logo),
      banner: Value(banner),
      frequency: Value(frequency),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      institution: Value(institution),
      language: Value(language),
      social: social == null && nullToAbsent
          ? const Value.absent()
          : Value(social),
      like: like == null && nullToAbsent ? const Value.absent() : Value(like),
      start: Value(start),
      end: Value(end),
      type: Value(type),
      status: Value(status),
    );
  }

  factory RadioStationDBData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RadioStationDBData(
      id: serializer.fromJson<int>(json['id']),
      logo: serializer.fromJson<Uint8List>(json['logo']),
      banner: serializer.fromJson<Uint8List>(json['banner']),
      frequency: serializer.fromJson<double>(json['frequency']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      institution: serializer.fromJson<String>(json['institution']),
      language: serializer.fromJson<String>(json['language']),
      social: serializer.fromJson<String?>(json['social']),
      like: serializer.fromJson<bool?>(json['like']),
      start: serializer.fromJson<String>(json['start']),
      end: serializer.fromJson<String>(json['end']),
      type: $RadioStationDBTable.$convertertype.fromJson(
        serializer.fromJson<int>(json['type']),
      ),
      status: $RadioStationDBTable.$converterstatus.fromJson(
        serializer.fromJson<int>(json['status']),
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'logo': serializer.toJson<Uint8List>(logo),
      'banner': serializer.toJson<Uint8List>(banner),
      'frequency': serializer.toJson<double>(frequency),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'institution': serializer.toJson<String>(institution),
      'language': serializer.toJson<String>(language),
      'social': serializer.toJson<String?>(social),
      'like': serializer.toJson<bool?>(like),
      'start': serializer.toJson<String>(start),
      'end': serializer.toJson<String>(end),
      'type': serializer.toJson<int>(
        $RadioStationDBTable.$convertertype.toJson(type),
      ),
      'status': serializer.toJson<int>(
        $RadioStationDBTable.$converterstatus.toJson(status),
      ),
    };
  }

  RadioStationDBData copyWith({
    int? id,
    Uint8List? logo,
    Uint8List? banner,
    double? frequency,
    String? name,
    Value<String?> description = const Value.absent(),
    String? institution,
    String? language,
    Value<String?> social = const Value.absent(),
    Value<bool?> like = const Value.absent(),
    String? start,
    String? end,
    StationType? type,
    StationStatus? status,
  }) => RadioStationDBData(
    id: id ?? this.id,
    logo: logo ?? this.logo,
    banner: banner ?? this.banner,
    frequency: frequency ?? this.frequency,
    name: name ?? this.name,
    description: description.present ? description.value : this.description,
    institution: institution ?? this.institution,
    language: language ?? this.language,
    social: social.present ? social.value : this.social,
    like: like.present ? like.value : this.like,
    start: start ?? this.start,
    end: end ?? this.end,
    type: type ?? this.type,
    status: status ?? this.status,
  );
  RadioStationDBData copyWithCompanion(RadioStationDBCompanion data) {
    return RadioStationDBData(
      id: data.id.present ? data.id.value : this.id,
      logo: data.logo.present ? data.logo.value : this.logo,
      banner: data.banner.present ? data.banner.value : this.banner,
      frequency: data.frequency.present ? data.frequency.value : this.frequency,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      institution: data.institution.present
          ? data.institution.value
          : this.institution,
      language: data.language.present ? data.language.value : this.language,
      social: data.social.present ? data.social.value : this.social,
      like: data.like.present ? data.like.value : this.like,
      start: data.start.present ? data.start.value : this.start,
      end: data.end.present ? data.end.value : this.end,
      type: data.type.present ? data.type.value : this.type,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RadioStationDBData(')
          ..write('id: $id, ')
          ..write('logo: $logo, ')
          ..write('banner: $banner, ')
          ..write('frequency: $frequency, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('institution: $institution, ')
          ..write('language: $language, ')
          ..write('social: $social, ')
          ..write('like: $like, ')
          ..write('start: $start, ')
          ..write('end: $end, ')
          ..write('type: $type, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    $driftBlobEquality.hash(logo),
    $driftBlobEquality.hash(banner),
    frequency,
    name,
    description,
    institution,
    language,
    social,
    like,
    start,
    end,
    type,
    status,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RadioStationDBData &&
          other.id == this.id &&
          $driftBlobEquality.equals(other.logo, this.logo) &&
          $driftBlobEquality.equals(other.banner, this.banner) &&
          other.frequency == this.frequency &&
          other.name == this.name &&
          other.description == this.description &&
          other.institution == this.institution &&
          other.language == this.language &&
          other.social == this.social &&
          other.like == this.like &&
          other.start == this.start &&
          other.end == this.end &&
          other.type == this.type &&
          other.status == this.status);
}

class RadioStationDBCompanion extends UpdateCompanion<RadioStationDBData> {
  final Value<int> id;
  final Value<Uint8List> logo;
  final Value<Uint8List> banner;
  final Value<double> frequency;
  final Value<String> name;
  final Value<String?> description;
  final Value<String> institution;
  final Value<String> language;
  final Value<String?> social;
  final Value<bool?> like;
  final Value<String> start;
  final Value<String> end;
  final Value<StationType> type;
  final Value<StationStatus> status;
  const RadioStationDBCompanion({
    this.id = const Value.absent(),
    this.logo = const Value.absent(),
    this.banner = const Value.absent(),
    this.frequency = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.institution = const Value.absent(),
    this.language = const Value.absent(),
    this.social = const Value.absent(),
    this.like = const Value.absent(),
    this.start = const Value.absent(),
    this.end = const Value.absent(),
    this.type = const Value.absent(),
    this.status = const Value.absent(),
  });
  RadioStationDBCompanion.insert({
    this.id = const Value.absent(),
    required Uint8List logo,
    required Uint8List banner,
    required double frequency,
    required String name,
    this.description = const Value.absent(),
    required String institution,
    required String language,
    this.social = const Value.absent(),
    this.like = const Value.absent(),
    required String start,
    required String end,
    required StationType type,
    required StationStatus status,
  }) : logo = Value(logo),
       banner = Value(banner),
       frequency = Value(frequency),
       name = Value(name),
       institution = Value(institution),
       language = Value(language),
       start = Value(start),
       end = Value(end),
       type = Value(type),
       status = Value(status);
  static Insertable<RadioStationDBData> custom({
    Expression<int>? id,
    Expression<Uint8List>? logo,
    Expression<Uint8List>? banner,
    Expression<double>? frequency,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? institution,
    Expression<String>? language,
    Expression<String>? social,
    Expression<bool>? like,
    Expression<String>? start,
    Expression<String>? end,
    Expression<int>? type,
    Expression<int>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (logo != null) 'logo': logo,
      if (banner != null) 'banner': banner,
      if (frequency != null) 'frequency': frequency,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (institution != null) 'institution': institution,
      if (language != null) 'language': language,
      if (social != null) 'social': social,
      if (like != null) 'like': like,
      if (start != null) 'start': start,
      if (end != null) 'end': end,
      if (type != null) 'type': type,
      if (status != null) 'status': status,
    });
  }

  RadioStationDBCompanion copyWith({
    Value<int>? id,
    Value<Uint8List>? logo,
    Value<Uint8List>? banner,
    Value<double>? frequency,
    Value<String>? name,
    Value<String?>? description,
    Value<String>? institution,
    Value<String>? language,
    Value<String?>? social,
    Value<bool?>? like,
    Value<String>? start,
    Value<String>? end,
    Value<StationType>? type,
    Value<StationStatus>? status,
  }) {
    return RadioStationDBCompanion(
      id: id ?? this.id,
      logo: logo ?? this.logo,
      banner: banner ?? this.banner,
      frequency: frequency ?? this.frequency,
      name: name ?? this.name,
      description: description ?? this.description,
      institution: institution ?? this.institution,
      language: language ?? this.language,
      social: social ?? this.social,
      like: like ?? this.like,
      start: start ?? this.start,
      end: end ?? this.end,
      type: type ?? this.type,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (logo.present) {
      map['logo'] = Variable<Uint8List>(logo.value);
    }
    if (banner.present) {
      map['banner'] = Variable<Uint8List>(banner.value);
    }
    if (frequency.present) {
      map['frequency'] = Variable<double>(frequency.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (institution.present) {
      map['institution'] = Variable<String>(institution.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (social.present) {
      map['social'] = Variable<String>(social.value);
    }
    if (like.present) {
      map['like'] = Variable<bool>(like.value);
    }
    if (start.present) {
      map['start'] = Variable<String>(start.value);
    }
    if (end.present) {
      map['end'] = Variable<String>(end.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(
        $RadioStationDBTable.$convertertype.toSql(type.value),
      );
    }
    if (status.present) {
      map['status'] = Variable<int>(
        $RadioStationDBTable.$converterstatus.toSql(status.value),
      );
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RadioStationDBCompanion(')
          ..write('id: $id, ')
          ..write('logo: $logo, ')
          ..write('banner: $banner, ')
          ..write('frequency: $frequency, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('institution: $institution, ')
          ..write('language: $language, ')
          ..write('social: $social, ')
          ..write('like: $like, ')
          ..write('start: $start, ')
          ..write('end: $end, ')
          ..write('type: $type, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

class $ProgramDBTable extends ProgramDB
    with TableInfo<$ProgramDBTable, ProgramDBData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProgramDBTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _studioMeta = const VerificationMeta('studio');
  @override
  late final GeneratedColumn<int> studio = GeneratedColumn<int>(
    'studio',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES radio_station_d_b (id)',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _likeMeta = const VerificationMeta('like');
  @override
  late final GeneratedColumn<bool> like = GeneratedColumn<bool>(
    'like',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("like" IN (0, 1))',
    ),
  );
  @override
  late final GeneratedColumnWithTypeConverter<ProgramType, int> type =
      GeneratedColumn<int>(
        'type',
        aliasedName,
        false,
        type: DriftSqlType.int,
        requiredDuringInsert: true,
      ).withConverter<ProgramType>($ProgramDBTable.$convertertype);
  @override
  late final GeneratedColumnWithTypeConverter<ProgramStatus, int> status =
      GeneratedColumn<int>(
        'status',
        aliasedName,
        false,
        type: DriftSqlType.int,
        requiredDuringInsert: true,
      ).withConverter<ProgramStatus>($ProgramDBTable.$converterstatus);
  static const VerificationMeta _startMeta = const VerificationMeta('start');
  @override
  late final GeneratedColumn<String> start = GeneratedColumn<String>(
    'start',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endMeta = const VerificationMeta('end');
  @override
  late final GeneratedColumn<String> end = GeneratedColumn<String>(
    'end',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String> hosts =
      GeneratedColumn<String>(
        'hosts',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<List<String>>($ProgramDBTable.$converterhosts);
  @override
  late final GeneratedColumnWithTypeConverter<List<ProgramWeekday>, String>
  weekday = GeneratedColumn<String>(
    'weekday',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  ).withConverter<List<ProgramWeekday>>($ProgramDBTable.$converterweekday);
  @override
  List<GeneratedColumn> get $columns => [
    id,
    studio,
    name,
    description,
    like,
    type,
    status,
    start,
    end,
    hosts,
    weekday,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'program_d_b';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProgramDBData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('studio')) {
      context.handle(
        _studioMeta,
        studio.isAcceptableOrUnknown(data['studio']!, _studioMeta),
      );
    } else if (isInserting) {
      context.missing(_studioMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('like')) {
      context.handle(
        _likeMeta,
        like.isAcceptableOrUnknown(data['like']!, _likeMeta),
      );
    }
    if (data.containsKey('start')) {
      context.handle(
        _startMeta,
        start.isAcceptableOrUnknown(data['start']!, _startMeta),
      );
    } else if (isInserting) {
      context.missing(_startMeta);
    }
    if (data.containsKey('end')) {
      context.handle(
        _endMeta,
        end.isAcceptableOrUnknown(data['end']!, _endMeta),
      );
    } else if (isInserting) {
      context.missing(_endMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProgramDBData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProgramDBData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      studio: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}studio'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      like: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}like'],
      ),
      type: $ProgramDBTable.$convertertype.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}type'],
        )!,
      ),
      status: $ProgramDBTable.$converterstatus.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}status'],
        )!,
      ),
      start: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}start'],
      )!,
      end: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}end'],
      )!,
      hosts: $ProgramDBTable.$converterhosts.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}hosts'],
        )!,
      ),
      weekday: $ProgramDBTable.$converterweekday.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}weekday'],
        )!,
      ),
    );
  }

  @override
  $ProgramDBTable createAlias(String alias) {
    return $ProgramDBTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<ProgramType, int, int> $convertertype =
      const EnumIndexConverter<ProgramType>(ProgramType.values);
  static JsonTypeConverter2<ProgramStatus, int, int> $converterstatus =
      const EnumIndexConverter<ProgramStatus>(ProgramStatus.values);
  static TypeConverter<List<String>, String> $converterhosts =
      const StringListConverter();
  static TypeConverter<List<ProgramWeekday>, String> $converterweekday =
      const WeekdayListConverter();
}

class ProgramDBData extends DataClass implements Insertable<ProgramDBData> {
  /// Outdoor Aerial 服务器分配给电台节目的 id
  final int id;

  /// 该电台节目隶属广播电台
  final int studio;

  /// 该电台节目的名称
  final String name;

  /// 对该电台节目的长文本介绍（可选）
  final String? description;

  /// 用户是否喜欢该电台节目
  final bool? like;

  /// 电台节目的类型
  final ProgramType type;

  /// 电台当前的播出状态
  final ProgramStatus status;

  /// 电台节目的固定播出时间
  final String start;

  /// 电台节目的固定结束时间
  final String end;

  /// 该电台节目的主持人阵容
  final List<String> hosts;

  /// 电台节目的固定播出日期
  final List<ProgramWeekday> weekday;
  const ProgramDBData({
    required this.id,
    required this.studio,
    required this.name,
    this.description,
    this.like,
    required this.type,
    required this.status,
    required this.start,
    required this.end,
    required this.hosts,
    required this.weekday,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['studio'] = Variable<int>(studio);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || like != null) {
      map['like'] = Variable<bool>(like);
    }
    {
      map['type'] = Variable<int>($ProgramDBTable.$convertertype.toSql(type));
    }
    {
      map['status'] = Variable<int>(
        $ProgramDBTable.$converterstatus.toSql(status),
      );
    }
    map['start'] = Variable<String>(start);
    map['end'] = Variable<String>(end);
    {
      map['hosts'] = Variable<String>(
        $ProgramDBTable.$converterhosts.toSql(hosts),
      );
    }
    {
      map['weekday'] = Variable<String>(
        $ProgramDBTable.$converterweekday.toSql(weekday),
      );
    }
    return map;
  }

  ProgramDBCompanion toCompanion(bool nullToAbsent) {
    return ProgramDBCompanion(
      id: Value(id),
      studio: Value(studio),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      like: like == null && nullToAbsent ? const Value.absent() : Value(like),
      type: Value(type),
      status: Value(status),
      start: Value(start),
      end: Value(end),
      hosts: Value(hosts),
      weekday: Value(weekday),
    );
  }

  factory ProgramDBData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProgramDBData(
      id: serializer.fromJson<int>(json['id']),
      studio: serializer.fromJson<int>(json['studio']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      like: serializer.fromJson<bool?>(json['like']),
      type: $ProgramDBTable.$convertertype.fromJson(
        serializer.fromJson<int>(json['type']),
      ),
      status: $ProgramDBTable.$converterstatus.fromJson(
        serializer.fromJson<int>(json['status']),
      ),
      start: serializer.fromJson<String>(json['start']),
      end: serializer.fromJson<String>(json['end']),
      hosts: serializer.fromJson<List<String>>(json['hosts']),
      weekday: serializer.fromJson<List<ProgramWeekday>>(json['weekday']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'studio': serializer.toJson<int>(studio),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'like': serializer.toJson<bool?>(like),
      'type': serializer.toJson<int>(
        $ProgramDBTable.$convertertype.toJson(type),
      ),
      'status': serializer.toJson<int>(
        $ProgramDBTable.$converterstatus.toJson(status),
      ),
      'start': serializer.toJson<String>(start),
      'end': serializer.toJson<String>(end),
      'hosts': serializer.toJson<List<String>>(hosts),
      'weekday': serializer.toJson<List<ProgramWeekday>>(weekday),
    };
  }

  ProgramDBData copyWith({
    int? id,
    int? studio,
    String? name,
    Value<String?> description = const Value.absent(),
    Value<bool?> like = const Value.absent(),
    ProgramType? type,
    ProgramStatus? status,
    String? start,
    String? end,
    List<String>? hosts,
    List<ProgramWeekday>? weekday,
  }) => ProgramDBData(
    id: id ?? this.id,
    studio: studio ?? this.studio,
    name: name ?? this.name,
    description: description.present ? description.value : this.description,
    like: like.present ? like.value : this.like,
    type: type ?? this.type,
    status: status ?? this.status,
    start: start ?? this.start,
    end: end ?? this.end,
    hosts: hosts ?? this.hosts,
    weekday: weekday ?? this.weekday,
  );
  ProgramDBData copyWithCompanion(ProgramDBCompanion data) {
    return ProgramDBData(
      id: data.id.present ? data.id.value : this.id,
      studio: data.studio.present ? data.studio.value : this.studio,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      like: data.like.present ? data.like.value : this.like,
      type: data.type.present ? data.type.value : this.type,
      status: data.status.present ? data.status.value : this.status,
      start: data.start.present ? data.start.value : this.start,
      end: data.end.present ? data.end.value : this.end,
      hosts: data.hosts.present ? data.hosts.value : this.hosts,
      weekday: data.weekday.present ? data.weekday.value : this.weekday,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProgramDBData(')
          ..write('id: $id, ')
          ..write('studio: $studio, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('like: $like, ')
          ..write('type: $type, ')
          ..write('status: $status, ')
          ..write('start: $start, ')
          ..write('end: $end, ')
          ..write('hosts: $hosts, ')
          ..write('weekday: $weekday')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    studio,
    name,
    description,
    like,
    type,
    status,
    start,
    end,
    hosts,
    weekday,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProgramDBData &&
          other.id == this.id &&
          other.studio == this.studio &&
          other.name == this.name &&
          other.description == this.description &&
          other.like == this.like &&
          other.type == this.type &&
          other.status == this.status &&
          other.start == this.start &&
          other.end == this.end &&
          other.hosts == this.hosts &&
          other.weekday == this.weekday);
}

class ProgramDBCompanion extends UpdateCompanion<ProgramDBData> {
  final Value<int> id;
  final Value<int> studio;
  final Value<String> name;
  final Value<String?> description;
  final Value<bool?> like;
  final Value<ProgramType> type;
  final Value<ProgramStatus> status;
  final Value<String> start;
  final Value<String> end;
  final Value<List<String>> hosts;
  final Value<List<ProgramWeekday>> weekday;
  const ProgramDBCompanion({
    this.id = const Value.absent(),
    this.studio = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.like = const Value.absent(),
    this.type = const Value.absent(),
    this.status = const Value.absent(),
    this.start = const Value.absent(),
    this.end = const Value.absent(),
    this.hosts = const Value.absent(),
    this.weekday = const Value.absent(),
  });
  ProgramDBCompanion.insert({
    this.id = const Value.absent(),
    required int studio,
    required String name,
    this.description = const Value.absent(),
    this.like = const Value.absent(),
    required ProgramType type,
    required ProgramStatus status,
    required String start,
    required String end,
    required List<String> hosts,
    required List<ProgramWeekday> weekday,
  }) : studio = Value(studio),
       name = Value(name),
       type = Value(type),
       status = Value(status),
       start = Value(start),
       end = Value(end),
       hosts = Value(hosts),
       weekday = Value(weekday);
  static Insertable<ProgramDBData> custom({
    Expression<int>? id,
    Expression<int>? studio,
    Expression<String>? name,
    Expression<String>? description,
    Expression<bool>? like,
    Expression<int>? type,
    Expression<int>? status,
    Expression<String>? start,
    Expression<String>? end,
    Expression<String>? hosts,
    Expression<String>? weekday,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (studio != null) 'studio': studio,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (like != null) 'like': like,
      if (type != null) 'type': type,
      if (status != null) 'status': status,
      if (start != null) 'start': start,
      if (end != null) 'end': end,
      if (hosts != null) 'hosts': hosts,
      if (weekday != null) 'weekday': weekday,
    });
  }

  ProgramDBCompanion copyWith({
    Value<int>? id,
    Value<int>? studio,
    Value<String>? name,
    Value<String?>? description,
    Value<bool?>? like,
    Value<ProgramType>? type,
    Value<ProgramStatus>? status,
    Value<String>? start,
    Value<String>? end,
    Value<List<String>>? hosts,
    Value<List<ProgramWeekday>>? weekday,
  }) {
    return ProgramDBCompanion(
      id: id ?? this.id,
      studio: studio ?? this.studio,
      name: name ?? this.name,
      description: description ?? this.description,
      like: like ?? this.like,
      type: type ?? this.type,
      status: status ?? this.status,
      start: start ?? this.start,
      end: end ?? this.end,
      hosts: hosts ?? this.hosts,
      weekday: weekday ?? this.weekday,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (studio.present) {
      map['studio'] = Variable<int>(studio.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (like.present) {
      map['like'] = Variable<bool>(like.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(
        $ProgramDBTable.$convertertype.toSql(type.value),
      );
    }
    if (status.present) {
      map['status'] = Variable<int>(
        $ProgramDBTable.$converterstatus.toSql(status.value),
      );
    }
    if (start.present) {
      map['start'] = Variable<String>(start.value);
    }
    if (end.present) {
      map['end'] = Variable<String>(end.value);
    }
    if (hosts.present) {
      map['hosts'] = Variable<String>(
        $ProgramDBTable.$converterhosts.toSql(hosts.value),
      );
    }
    if (weekday.present) {
      map['weekday'] = Variable<String>(
        $ProgramDBTable.$converterweekday.toSql(weekday.value),
      );
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProgramDBCompanion(')
          ..write('id: $id, ')
          ..write('studio: $studio, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('like: $like, ')
          ..write('type: $type, ')
          ..write('status: $status, ')
          ..write('start: $start, ')
          ..write('end: $end, ')
          ..write('hosts: $hosts, ')
          ..write('weekday: $weekday')
          ..write(')'))
        .toString();
  }
}

class $EpisodeDBTable extends EpisodeDB
    with TableInfo<$EpisodeDBTable, EpisodeDBData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EpisodeDBTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _programMeta = const VerificationMeta(
    'program',
  );
  @override
  late final GeneratedColumn<int> program = GeneratedColumn<int>(
    'program',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES program_d_b (id)',
    ),
  );
  static const VerificationMeta _coverMeta = const VerificationMeta('cover');
  @override
  late final GeneratedColumn<Uint8List> cover = GeneratedColumn<Uint8List>(
    'cover',
    aliasedName,
    false,
    type: DriftSqlType.blob,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _abstractTextMeta = const VerificationMeta(
    'abstractText',
  );
  @override
  late final GeneratedColumn<String> abstractText = GeneratedColumn<String>(
    'abstract',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _favoriteMeta = const VerificationMeta(
    'favorite',
  );
  @override
  late final GeneratedColumn<bool> favorite = GeneratedColumn<bool>(
    'favorite',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("favorite" IN (0, 1))',
    ),
  );
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<DateTime> time = GeneratedColumn<DateTime>(
    'time',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    program,
    cover,
    title,
    abstractText,
    favorite,
    time,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'episode_d_b';
  @override
  VerificationContext validateIntegrity(
    Insertable<EpisodeDBData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('program')) {
      context.handle(
        _programMeta,
        program.isAcceptableOrUnknown(data['program']!, _programMeta),
      );
    } else if (isInserting) {
      context.missing(_programMeta);
    }
    if (data.containsKey('cover')) {
      context.handle(
        _coverMeta,
        cover.isAcceptableOrUnknown(data['cover']!, _coverMeta),
      );
    } else if (isInserting) {
      context.missing(_coverMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('abstract')) {
      context.handle(
        _abstractTextMeta,
        abstractText.isAcceptableOrUnknown(
          data['abstract']!,
          _abstractTextMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_abstractTextMeta);
    }
    if (data.containsKey('favorite')) {
      context.handle(
        _favoriteMeta,
        favorite.isAcceptableOrUnknown(data['favorite']!, _favoriteMeta),
      );
    } else if (isInserting) {
      context.missing(_favoriteMeta);
    }
    if (data.containsKey('time')) {
      context.handle(
        _timeMeta,
        time.isAcceptableOrUnknown(data['time']!, _timeMeta),
      );
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {program, time};
  @override
  EpisodeDBData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EpisodeDBData(
      program: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}program'],
      )!,
      cover: attachedDatabase.typeMapping.read(
        DriftSqlType.blob,
        data['${effectivePrefix}cover'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      abstractText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}abstract'],
      )!,
      favorite: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}favorite'],
      )!,
      time: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}time'],
      )!,
    );
  }

  @override
  $EpisodeDBTable createAlias(String alias) {
    return $EpisodeDBTable(attachedDatabase, alias);
  }
}

class EpisodeDBData extends DataClass implements Insertable<EpisodeDBData> {
  /// 本期电台节目隶属节目信息
  final int program;

  /// 本期电台节目的配图
  final Uint8List cover;

  /// 本期电台节目的主题
  final String title;

  /// 本期电台节目的摘要
  final String abstractText;

  /// 用户是否收藏本期节目
  final bool favorite;

  /// 本期电台节目的播出时间
  final DateTime time;
  const EpisodeDBData({
    required this.program,
    required this.cover,
    required this.title,
    required this.abstractText,
    required this.favorite,
    required this.time,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['program'] = Variable<int>(program);
    map['cover'] = Variable<Uint8List>(cover);
    map['title'] = Variable<String>(title);
    map['abstract'] = Variable<String>(abstractText);
    map['favorite'] = Variable<bool>(favorite);
    map['time'] = Variable<DateTime>(time);
    return map;
  }

  EpisodeDBCompanion toCompanion(bool nullToAbsent) {
    return EpisodeDBCompanion(
      program: Value(program),
      cover: Value(cover),
      title: Value(title),
      abstractText: Value(abstractText),
      favorite: Value(favorite),
      time: Value(time),
    );
  }

  factory EpisodeDBData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EpisodeDBData(
      program: serializer.fromJson<int>(json['program']),
      cover: serializer.fromJson<Uint8List>(json['cover']),
      title: serializer.fromJson<String>(json['title']),
      abstractText: serializer.fromJson<String>(json['abstractText']),
      favorite: serializer.fromJson<bool>(json['favorite']),
      time: serializer.fromJson<DateTime>(json['time']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'program': serializer.toJson<int>(program),
      'cover': serializer.toJson<Uint8List>(cover),
      'title': serializer.toJson<String>(title),
      'abstractText': serializer.toJson<String>(abstractText),
      'favorite': serializer.toJson<bool>(favorite),
      'time': serializer.toJson<DateTime>(time),
    };
  }

  EpisodeDBData copyWith({
    int? program,
    Uint8List? cover,
    String? title,
    String? abstractText,
    bool? favorite,
    DateTime? time,
  }) => EpisodeDBData(
    program: program ?? this.program,
    cover: cover ?? this.cover,
    title: title ?? this.title,
    abstractText: abstractText ?? this.abstractText,
    favorite: favorite ?? this.favorite,
    time: time ?? this.time,
  );
  EpisodeDBData copyWithCompanion(EpisodeDBCompanion data) {
    return EpisodeDBData(
      program: data.program.present ? data.program.value : this.program,
      cover: data.cover.present ? data.cover.value : this.cover,
      title: data.title.present ? data.title.value : this.title,
      abstractText: data.abstractText.present
          ? data.abstractText.value
          : this.abstractText,
      favorite: data.favorite.present ? data.favorite.value : this.favorite,
      time: data.time.present ? data.time.value : this.time,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EpisodeDBData(')
          ..write('program: $program, ')
          ..write('cover: $cover, ')
          ..write('title: $title, ')
          ..write('abstractText: $abstractText, ')
          ..write('favorite: $favorite, ')
          ..write('time: $time')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    program,
    $driftBlobEquality.hash(cover),
    title,
    abstractText,
    favorite,
    time,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EpisodeDBData &&
          other.program == this.program &&
          $driftBlobEquality.equals(other.cover, this.cover) &&
          other.title == this.title &&
          other.abstractText == this.abstractText &&
          other.favorite == this.favorite &&
          other.time == this.time);
}

class EpisodeDBCompanion extends UpdateCompanion<EpisodeDBData> {
  final Value<int> program;
  final Value<Uint8List> cover;
  final Value<String> title;
  final Value<String> abstractText;
  final Value<bool> favorite;
  final Value<DateTime> time;
  final Value<int> rowid;
  const EpisodeDBCompanion({
    this.program = const Value.absent(),
    this.cover = const Value.absent(),
    this.title = const Value.absent(),
    this.abstractText = const Value.absent(),
    this.favorite = const Value.absent(),
    this.time = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EpisodeDBCompanion.insert({
    required int program,
    required Uint8List cover,
    required String title,
    required String abstractText,
    required bool favorite,
    required DateTime time,
    this.rowid = const Value.absent(),
  }) : program = Value(program),
       cover = Value(cover),
       title = Value(title),
       abstractText = Value(abstractText),
       favorite = Value(favorite),
       time = Value(time);
  static Insertable<EpisodeDBData> custom({
    Expression<int>? program,
    Expression<Uint8List>? cover,
    Expression<String>? title,
    Expression<String>? abstractText,
    Expression<bool>? favorite,
    Expression<DateTime>? time,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (program != null) 'program': program,
      if (cover != null) 'cover': cover,
      if (title != null) 'title': title,
      if (abstractText != null) 'abstract': abstractText,
      if (favorite != null) 'favorite': favorite,
      if (time != null) 'time': time,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EpisodeDBCompanion copyWith({
    Value<int>? program,
    Value<Uint8List>? cover,
    Value<String>? title,
    Value<String>? abstractText,
    Value<bool>? favorite,
    Value<DateTime>? time,
    Value<int>? rowid,
  }) {
    return EpisodeDBCompanion(
      program: program ?? this.program,
      cover: cover ?? this.cover,
      title: title ?? this.title,
      abstractText: abstractText ?? this.abstractText,
      favorite: favorite ?? this.favorite,
      time: time ?? this.time,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (program.present) {
      map['program'] = Variable<int>(program.value);
    }
    if (cover.present) {
      map['cover'] = Variable<Uint8List>(cover.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (abstractText.present) {
      map['abstract'] = Variable<String>(abstractText.value);
    }
    if (favorite.present) {
      map['favorite'] = Variable<bool>(favorite.value);
    }
    if (time.present) {
      map['time'] = Variable<DateTime>(time.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EpisodeDBCompanion(')
          ..write('program: $program, ')
          ..write('cover: $cover, ')
          ..write('title: $title, ')
          ..write('abstractText: $abstractText, ')
          ..write('favorite: $favorite, ')
          ..write('time: $time, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $RadioStationDBTable radioStationDB = $RadioStationDBTable(this);
  late final $ProgramDBTable programDB = $ProgramDBTable(this);
  late final $EpisodeDBTable episodeDB = $EpisodeDBTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    radioStationDB,
    programDB,
    episodeDB,
  ];
}

typedef $$RadioStationDBTableCreateCompanionBuilder =
    RadioStationDBCompanion Function({
      Value<int> id,
      required Uint8List logo,
      required Uint8List banner,
      required double frequency,
      required String name,
      Value<String?> description,
      required String institution,
      required String language,
      Value<String?> social,
      Value<bool?> like,
      required String start,
      required String end,
      required StationType type,
      required StationStatus status,
    });
typedef $$RadioStationDBTableUpdateCompanionBuilder =
    RadioStationDBCompanion Function({
      Value<int> id,
      Value<Uint8List> logo,
      Value<Uint8List> banner,
      Value<double> frequency,
      Value<String> name,
      Value<String?> description,
      Value<String> institution,
      Value<String> language,
      Value<String?> social,
      Value<bool?> like,
      Value<String> start,
      Value<String> end,
      Value<StationType> type,
      Value<StationStatus> status,
    });

final class $$RadioStationDBTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $RadioStationDBTable,
          RadioStationDBData
        > {
  $$RadioStationDBTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$ProgramDBTable, List<ProgramDBData>>
  _programDBRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.programDB,
    aliasName: $_aliasNameGenerator(db.radioStationDB.id, db.programDB.studio),
  );

  $$ProgramDBTableProcessedTableManager get programDBRefs {
    final manager = $$ProgramDBTableTableManager(
      $_db,
      $_db.programDB,
    ).filter((f) => f.studio.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_programDBRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$RadioStationDBTableFilterComposer
    extends Composer<_$AppDatabase, $RadioStationDBTable> {
  $$RadioStationDBTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<Uint8List> get logo => $composableBuilder(
    column: $table.logo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<Uint8List> get banner => $composableBuilder(
    column: $table.banner,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get frequency => $composableBuilder(
    column: $table.frequency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get institution => $composableBuilder(
    column: $table.institution,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get language => $composableBuilder(
    column: $table.language,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get social => $composableBuilder(
    column: $table.social,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get like => $composableBuilder(
    column: $table.like,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get start => $composableBuilder(
    column: $table.start,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get end => $composableBuilder(
    column: $table.end,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<StationType, StationType, int> get type =>
      $composableBuilder(
        column: $table.type,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnWithTypeConverterFilters<StationStatus, StationStatus, int>
  get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  Expression<bool> programDBRefs(
    Expression<bool> Function($$ProgramDBTableFilterComposer f) f,
  ) {
    final $$ProgramDBTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.programDB,
      getReferencedColumn: (t) => t.studio,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProgramDBTableFilterComposer(
            $db: $db,
            $table: $db.programDB,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RadioStationDBTableOrderingComposer
    extends Composer<_$AppDatabase, $RadioStationDBTable> {
  $$RadioStationDBTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<Uint8List> get logo => $composableBuilder(
    column: $table.logo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<Uint8List> get banner => $composableBuilder(
    column: $table.banner,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get frequency => $composableBuilder(
    column: $table.frequency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get institution => $composableBuilder(
    column: $table.institution,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get language => $composableBuilder(
    column: $table.language,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get social => $composableBuilder(
    column: $table.social,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get like => $composableBuilder(
    column: $table.like,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get start => $composableBuilder(
    column: $table.start,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get end => $composableBuilder(
    column: $table.end,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$RadioStationDBTableAnnotationComposer
    extends Composer<_$AppDatabase, $RadioStationDBTable> {
  $$RadioStationDBTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<Uint8List> get logo =>
      $composableBuilder(column: $table.logo, builder: (column) => column);

  GeneratedColumn<Uint8List> get banner =>
      $composableBuilder(column: $table.banner, builder: (column) => column);

  GeneratedColumn<double> get frequency =>
      $composableBuilder(column: $table.frequency, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get institution => $composableBuilder(
    column: $table.institution,
    builder: (column) => column,
  );

  GeneratedColumn<String> get language =>
      $composableBuilder(column: $table.language, builder: (column) => column);

  GeneratedColumn<String> get social =>
      $composableBuilder(column: $table.social, builder: (column) => column);

  GeneratedColumn<bool> get like =>
      $composableBuilder(column: $table.like, builder: (column) => column);

  GeneratedColumn<String> get start =>
      $composableBuilder(column: $table.start, builder: (column) => column);

  GeneratedColumn<String> get end =>
      $composableBuilder(column: $table.end, builder: (column) => column);

  GeneratedColumnWithTypeConverter<StationType, int> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumnWithTypeConverter<StationStatus, int> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  Expression<T> programDBRefs<T extends Object>(
    Expression<T> Function($$ProgramDBTableAnnotationComposer a) f,
  ) {
    final $$ProgramDBTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.programDB,
      getReferencedColumn: (t) => t.studio,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProgramDBTableAnnotationComposer(
            $db: $db,
            $table: $db.programDB,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RadioStationDBTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RadioStationDBTable,
          RadioStationDBData,
          $$RadioStationDBTableFilterComposer,
          $$RadioStationDBTableOrderingComposer,
          $$RadioStationDBTableAnnotationComposer,
          $$RadioStationDBTableCreateCompanionBuilder,
          $$RadioStationDBTableUpdateCompanionBuilder,
          (RadioStationDBData, $$RadioStationDBTableReferences),
          RadioStationDBData,
          PrefetchHooks Function({bool programDBRefs})
        > {
  $$RadioStationDBTableTableManager(
    _$AppDatabase db,
    $RadioStationDBTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RadioStationDBTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RadioStationDBTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RadioStationDBTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<Uint8List> logo = const Value.absent(),
                Value<Uint8List> banner = const Value.absent(),
                Value<double> frequency = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String> institution = const Value.absent(),
                Value<String> language = const Value.absent(),
                Value<String?> social = const Value.absent(),
                Value<bool?> like = const Value.absent(),
                Value<String> start = const Value.absent(),
                Value<String> end = const Value.absent(),
                Value<StationType> type = const Value.absent(),
                Value<StationStatus> status = const Value.absent(),
              }) => RadioStationDBCompanion(
                id: id,
                logo: logo,
                banner: banner,
                frequency: frequency,
                name: name,
                description: description,
                institution: institution,
                language: language,
                social: social,
                like: like,
                start: start,
                end: end,
                type: type,
                status: status,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required Uint8List logo,
                required Uint8List banner,
                required double frequency,
                required String name,
                Value<String?> description = const Value.absent(),
                required String institution,
                required String language,
                Value<String?> social = const Value.absent(),
                Value<bool?> like = const Value.absent(),
                required String start,
                required String end,
                required StationType type,
                required StationStatus status,
              }) => RadioStationDBCompanion.insert(
                id: id,
                logo: logo,
                banner: banner,
                frequency: frequency,
                name: name,
                description: description,
                institution: institution,
                language: language,
                social: social,
                like: like,
                start: start,
                end: end,
                type: type,
                status: status,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RadioStationDBTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({programDBRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (programDBRefs) db.programDB],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (programDBRefs)
                    await $_getPrefetchedData<
                      RadioStationDBData,
                      $RadioStationDBTable,
                      ProgramDBData
                    >(
                      currentTable: table,
                      referencedTable: $$RadioStationDBTableReferences
                          ._programDBRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$RadioStationDBTableReferences(
                            db,
                            table,
                            p0,
                          ).programDBRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.studio == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$RadioStationDBTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RadioStationDBTable,
      RadioStationDBData,
      $$RadioStationDBTableFilterComposer,
      $$RadioStationDBTableOrderingComposer,
      $$RadioStationDBTableAnnotationComposer,
      $$RadioStationDBTableCreateCompanionBuilder,
      $$RadioStationDBTableUpdateCompanionBuilder,
      (RadioStationDBData, $$RadioStationDBTableReferences),
      RadioStationDBData,
      PrefetchHooks Function({bool programDBRefs})
    >;
typedef $$ProgramDBTableCreateCompanionBuilder =
    ProgramDBCompanion Function({
      Value<int> id,
      required int studio,
      required String name,
      Value<String?> description,
      Value<bool?> like,
      required ProgramType type,
      required ProgramStatus status,
      required String start,
      required String end,
      required List<String> hosts,
      required List<ProgramWeekday> weekday,
    });
typedef $$ProgramDBTableUpdateCompanionBuilder =
    ProgramDBCompanion Function({
      Value<int> id,
      Value<int> studio,
      Value<String> name,
      Value<String?> description,
      Value<bool?> like,
      Value<ProgramType> type,
      Value<ProgramStatus> status,
      Value<String> start,
      Value<String> end,
      Value<List<String>> hosts,
      Value<List<ProgramWeekday>> weekday,
    });

final class $$ProgramDBTableReferences
    extends BaseReferences<_$AppDatabase, $ProgramDBTable, ProgramDBData> {
  $$ProgramDBTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RadioStationDBTable _studioTable(_$AppDatabase db) =>
      db.radioStationDB.createAlias(
        $_aliasNameGenerator(db.programDB.studio, db.radioStationDB.id),
      );

  $$RadioStationDBTableProcessedTableManager get studio {
    final $_column = $_itemColumn<int>('studio')!;

    final manager = $$RadioStationDBTableTableManager(
      $_db,
      $_db.radioStationDB,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_studioTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$EpisodeDBTable, List<EpisodeDBData>>
  _episodeDBRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.episodeDB,
    aliasName: $_aliasNameGenerator(db.programDB.id, db.episodeDB.program),
  );

  $$EpisodeDBTableProcessedTableManager get episodeDBRefs {
    final manager = $$EpisodeDBTableTableManager(
      $_db,
      $_db.episodeDB,
    ).filter((f) => f.program.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_episodeDBRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ProgramDBTableFilterComposer
    extends Composer<_$AppDatabase, $ProgramDBTable> {
  $$ProgramDBTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get like => $composableBuilder(
    column: $table.like,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<ProgramType, ProgramType, int> get type =>
      $composableBuilder(
        column: $table.type,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnWithTypeConverterFilters<ProgramStatus, ProgramStatus, int>
  get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<String> get start => $composableBuilder(
    column: $table.start,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get end => $composableBuilder(
    column: $table.end,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
  get hosts => $composableBuilder(
    column: $table.hosts,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<
    List<ProgramWeekday>,
    List<ProgramWeekday>,
    String
  >
  get weekday => $composableBuilder(
    column: $table.weekday,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  $$RadioStationDBTableFilterComposer get studio {
    final $$RadioStationDBTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.studio,
      referencedTable: $db.radioStationDB,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RadioStationDBTableFilterComposer(
            $db: $db,
            $table: $db.radioStationDB,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> episodeDBRefs(
    Expression<bool> Function($$EpisodeDBTableFilterComposer f) f,
  ) {
    final $$EpisodeDBTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.episodeDB,
      getReferencedColumn: (t) => t.program,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EpisodeDBTableFilterComposer(
            $db: $db,
            $table: $db.episodeDB,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProgramDBTableOrderingComposer
    extends Composer<_$AppDatabase, $ProgramDBTable> {
  $$ProgramDBTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get like => $composableBuilder(
    column: $table.like,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get start => $composableBuilder(
    column: $table.start,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get end => $composableBuilder(
    column: $table.end,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get hosts => $composableBuilder(
    column: $table.hosts,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get weekday => $composableBuilder(
    column: $table.weekday,
    builder: (column) => ColumnOrderings(column),
  );

  $$RadioStationDBTableOrderingComposer get studio {
    final $$RadioStationDBTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.studio,
      referencedTable: $db.radioStationDB,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RadioStationDBTableOrderingComposer(
            $db: $db,
            $table: $db.radioStationDB,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ProgramDBTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProgramDBTable> {
  $$ProgramDBTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get like =>
      $composableBuilder(column: $table.like, builder: (column) => column);

  GeneratedColumnWithTypeConverter<ProgramType, int> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumnWithTypeConverter<ProgramStatus, int> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get start =>
      $composableBuilder(column: $table.start, builder: (column) => column);

  GeneratedColumn<String> get end =>
      $composableBuilder(column: $table.end, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>, String> get hosts =>
      $composableBuilder(column: $table.hosts, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<ProgramWeekday>, String> get weekday =>
      $composableBuilder(column: $table.weekday, builder: (column) => column);

  $$RadioStationDBTableAnnotationComposer get studio {
    final $$RadioStationDBTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.studio,
      referencedTable: $db.radioStationDB,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RadioStationDBTableAnnotationComposer(
            $db: $db,
            $table: $db.radioStationDB,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> episodeDBRefs<T extends Object>(
    Expression<T> Function($$EpisodeDBTableAnnotationComposer a) f,
  ) {
    final $$EpisodeDBTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.episodeDB,
      getReferencedColumn: (t) => t.program,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EpisodeDBTableAnnotationComposer(
            $db: $db,
            $table: $db.episodeDB,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProgramDBTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProgramDBTable,
          ProgramDBData,
          $$ProgramDBTableFilterComposer,
          $$ProgramDBTableOrderingComposer,
          $$ProgramDBTableAnnotationComposer,
          $$ProgramDBTableCreateCompanionBuilder,
          $$ProgramDBTableUpdateCompanionBuilder,
          (ProgramDBData, $$ProgramDBTableReferences),
          ProgramDBData,
          PrefetchHooks Function({bool studio, bool episodeDBRefs})
        > {
  $$ProgramDBTableTableManager(_$AppDatabase db, $ProgramDBTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProgramDBTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProgramDBTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProgramDBTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> studio = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<bool?> like = const Value.absent(),
                Value<ProgramType> type = const Value.absent(),
                Value<ProgramStatus> status = const Value.absent(),
                Value<String> start = const Value.absent(),
                Value<String> end = const Value.absent(),
                Value<List<String>> hosts = const Value.absent(),
                Value<List<ProgramWeekday>> weekday = const Value.absent(),
              }) => ProgramDBCompanion(
                id: id,
                studio: studio,
                name: name,
                description: description,
                like: like,
                type: type,
                status: status,
                start: start,
                end: end,
                hosts: hosts,
                weekday: weekday,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int studio,
                required String name,
                Value<String?> description = const Value.absent(),
                Value<bool?> like = const Value.absent(),
                required ProgramType type,
                required ProgramStatus status,
                required String start,
                required String end,
                required List<String> hosts,
                required List<ProgramWeekday> weekday,
              }) => ProgramDBCompanion.insert(
                id: id,
                studio: studio,
                name: name,
                description: description,
                like: like,
                type: type,
                status: status,
                start: start,
                end: end,
                hosts: hosts,
                weekday: weekday,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ProgramDBTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({studio = false, episodeDBRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (episodeDBRefs) db.episodeDB],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (studio) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.studio,
                                referencedTable: $$ProgramDBTableReferences
                                    ._studioTable(db),
                                referencedColumn: $$ProgramDBTableReferences
                                    ._studioTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (episodeDBRefs)
                    await $_getPrefetchedData<
                      ProgramDBData,
                      $ProgramDBTable,
                      EpisodeDBData
                    >(
                      currentTable: table,
                      referencedTable: $$ProgramDBTableReferences
                          ._episodeDBRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ProgramDBTableReferences(
                            db,
                            table,
                            p0,
                          ).episodeDBRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.program == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ProgramDBTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProgramDBTable,
      ProgramDBData,
      $$ProgramDBTableFilterComposer,
      $$ProgramDBTableOrderingComposer,
      $$ProgramDBTableAnnotationComposer,
      $$ProgramDBTableCreateCompanionBuilder,
      $$ProgramDBTableUpdateCompanionBuilder,
      (ProgramDBData, $$ProgramDBTableReferences),
      ProgramDBData,
      PrefetchHooks Function({bool studio, bool episodeDBRefs})
    >;
typedef $$EpisodeDBTableCreateCompanionBuilder =
    EpisodeDBCompanion Function({
      required int program,
      required Uint8List cover,
      required String title,
      required String abstractText,
      required bool favorite,
      required DateTime time,
      Value<int> rowid,
    });
typedef $$EpisodeDBTableUpdateCompanionBuilder =
    EpisodeDBCompanion Function({
      Value<int> program,
      Value<Uint8List> cover,
      Value<String> title,
      Value<String> abstractText,
      Value<bool> favorite,
      Value<DateTime> time,
      Value<int> rowid,
    });

final class $$EpisodeDBTableReferences
    extends BaseReferences<_$AppDatabase, $EpisodeDBTable, EpisodeDBData> {
  $$EpisodeDBTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProgramDBTable _programTable(_$AppDatabase db) => db.programDB
      .createAlias($_aliasNameGenerator(db.episodeDB.program, db.programDB.id));

  $$ProgramDBTableProcessedTableManager get program {
    final $_column = $_itemColumn<int>('program')!;

    final manager = $$ProgramDBTableTableManager(
      $_db,
      $_db.programDB,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_programTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$EpisodeDBTableFilterComposer
    extends Composer<_$AppDatabase, $EpisodeDBTable> {
  $$EpisodeDBTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<Uint8List> get cover => $composableBuilder(
    column: $table.cover,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get abstractText => $composableBuilder(
    column: $table.abstractText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get favorite => $composableBuilder(
    column: $table.favorite,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get time => $composableBuilder(
    column: $table.time,
    builder: (column) => ColumnFilters(column),
  );

  $$ProgramDBTableFilterComposer get program {
    final $$ProgramDBTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.program,
      referencedTable: $db.programDB,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProgramDBTableFilterComposer(
            $db: $db,
            $table: $db.programDB,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EpisodeDBTableOrderingComposer
    extends Composer<_$AppDatabase, $EpisodeDBTable> {
  $$EpisodeDBTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<Uint8List> get cover => $composableBuilder(
    column: $table.cover,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get abstractText => $composableBuilder(
    column: $table.abstractText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get favorite => $composableBuilder(
    column: $table.favorite,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get time => $composableBuilder(
    column: $table.time,
    builder: (column) => ColumnOrderings(column),
  );

  $$ProgramDBTableOrderingComposer get program {
    final $$ProgramDBTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.program,
      referencedTable: $db.programDB,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProgramDBTableOrderingComposer(
            $db: $db,
            $table: $db.programDB,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EpisodeDBTableAnnotationComposer
    extends Composer<_$AppDatabase, $EpisodeDBTable> {
  $$EpisodeDBTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<Uint8List> get cover =>
      $composableBuilder(column: $table.cover, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get abstractText => $composableBuilder(
    column: $table.abstractText,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get favorite =>
      $composableBuilder(column: $table.favorite, builder: (column) => column);

  GeneratedColumn<DateTime> get time =>
      $composableBuilder(column: $table.time, builder: (column) => column);

  $$ProgramDBTableAnnotationComposer get program {
    final $$ProgramDBTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.program,
      referencedTable: $db.programDB,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProgramDBTableAnnotationComposer(
            $db: $db,
            $table: $db.programDB,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EpisodeDBTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EpisodeDBTable,
          EpisodeDBData,
          $$EpisodeDBTableFilterComposer,
          $$EpisodeDBTableOrderingComposer,
          $$EpisodeDBTableAnnotationComposer,
          $$EpisodeDBTableCreateCompanionBuilder,
          $$EpisodeDBTableUpdateCompanionBuilder,
          (EpisodeDBData, $$EpisodeDBTableReferences),
          EpisodeDBData,
          PrefetchHooks Function({bool program})
        > {
  $$EpisodeDBTableTableManager(_$AppDatabase db, $EpisodeDBTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EpisodeDBTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EpisodeDBTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EpisodeDBTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> program = const Value.absent(),
                Value<Uint8List> cover = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> abstractText = const Value.absent(),
                Value<bool> favorite = const Value.absent(),
                Value<DateTime> time = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EpisodeDBCompanion(
                program: program,
                cover: cover,
                title: title,
                abstractText: abstractText,
                favorite: favorite,
                time: time,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int program,
                required Uint8List cover,
                required String title,
                required String abstractText,
                required bool favorite,
                required DateTime time,
                Value<int> rowid = const Value.absent(),
              }) => EpisodeDBCompanion.insert(
                program: program,
                cover: cover,
                title: title,
                abstractText: abstractText,
                favorite: favorite,
                time: time,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$EpisodeDBTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({program = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (program) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.program,
                                referencedTable: $$EpisodeDBTableReferences
                                    ._programTable(db),
                                referencedColumn: $$EpisodeDBTableReferences
                                    ._programTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$EpisodeDBTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EpisodeDBTable,
      EpisodeDBData,
      $$EpisodeDBTableFilterComposer,
      $$EpisodeDBTableOrderingComposer,
      $$EpisodeDBTableAnnotationComposer,
      $$EpisodeDBTableCreateCompanionBuilder,
      $$EpisodeDBTableUpdateCompanionBuilder,
      (EpisodeDBData, $$EpisodeDBTableReferences),
      EpisodeDBData,
      PrefetchHooks Function({bool program})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$RadioStationDBTableTableManager get radioStationDB =>
      $$RadioStationDBTableTableManager(_db, _db.radioStationDB);
  $$ProgramDBTableTableManager get programDB =>
      $$ProgramDBTableTableManager(_db, _db.programDB);
  $$EpisodeDBTableTableManager get episodeDB =>
      $$EpisodeDBTableTableManager(_db, _db.episodeDB);
}
