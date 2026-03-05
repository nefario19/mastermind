// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $HighscoresTable extends Highscores
    with TableInfo<$HighscoresTable, Highscore> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HighscoresTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _scoreMeta = const VerificationMeta('score');
  @override
  late final GeneratedColumn<int> score = GeneratedColumn<int>(
    'score',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _playedAtMeta = const VerificationMeta(
    'playedAt',
  );
  @override
  late final GeneratedColumn<DateTime> playedAt = GeneratedColumn<DateTime>(
    'played_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, score, playedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'highscores';
  @override
  VerificationContext validateIntegrity(
    Insertable<Highscore> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('score')) {
      context.handle(
        _scoreMeta,
        score.isAcceptableOrUnknown(data['score']!, _scoreMeta),
      );
    } else if (isInserting) {
      context.missing(_scoreMeta);
    }
    if (data.containsKey('played_at')) {
      context.handle(
        _playedAtMeta,
        playedAt.isAcceptableOrUnknown(data['played_at']!, _playedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_playedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Highscore map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Highscore(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      score: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}score'],
      )!,
      playedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}played_at'],
      )!,
    );
  }

  @override
  $HighscoresTable createAlias(String alias) {
    return $HighscoresTable(attachedDatabase, alias);
  }
}

class Highscore extends DataClass implements Insertable<Highscore> {
  final int id;
  final int score;
  final DateTime playedAt;
  const Highscore({
    required this.id,
    required this.score,
    required this.playedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['score'] = Variable<int>(score);
    map['played_at'] = Variable<DateTime>(playedAt);
    return map;
  }

  HighscoresCompanion toCompanion(bool nullToAbsent) {
    return HighscoresCompanion(
      id: Value(id),
      score: Value(score),
      playedAt: Value(playedAt),
    );
  }

  factory Highscore.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Highscore(
      id: serializer.fromJson<int>(json['id']),
      score: serializer.fromJson<int>(json['score']),
      playedAt: serializer.fromJson<DateTime>(json['playedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'score': serializer.toJson<int>(score),
      'playedAt': serializer.toJson<DateTime>(playedAt),
    };
  }

  Highscore copyWith({int? id, int? score, DateTime? playedAt}) => Highscore(
    id: id ?? this.id,
    score: score ?? this.score,
    playedAt: playedAt ?? this.playedAt,
  );
  Highscore copyWithCompanion(HighscoresCompanion data) {
    return Highscore(
      id: data.id.present ? data.id.value : this.id,
      score: data.score.present ? data.score.value : this.score,
      playedAt: data.playedAt.present ? data.playedAt.value : this.playedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Highscore(')
          ..write('id: $id, ')
          ..write('score: $score, ')
          ..write('playedAt: $playedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, score, playedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Highscore &&
          other.id == this.id &&
          other.score == this.score &&
          other.playedAt == this.playedAt);
}

class HighscoresCompanion extends UpdateCompanion<Highscore> {
  final Value<int> id;
  final Value<int> score;
  final Value<DateTime> playedAt;
  const HighscoresCompanion({
    this.id = const Value.absent(),
    this.score = const Value.absent(),
    this.playedAt = const Value.absent(),
  });
  HighscoresCompanion.insert({
    this.id = const Value.absent(),
    required int score,
    required DateTime playedAt,
  }) : score = Value(score),
       playedAt = Value(playedAt);
  static Insertable<Highscore> custom({
    Expression<int>? id,
    Expression<int>? score,
    Expression<DateTime>? playedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (score != null) 'score': score,
      if (playedAt != null) 'played_at': playedAt,
    });
  }

  HighscoresCompanion copyWith({
    Value<int>? id,
    Value<int>? score,
    Value<DateTime>? playedAt,
  }) {
    return HighscoresCompanion(
      id: id ?? this.id,
      score: score ?? this.score,
      playedAt: playedAt ?? this.playedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (score.present) {
      map['score'] = Variable<int>(score.value);
    }
    if (playedAt.present) {
      map['played_at'] = Variable<DateTime>(playedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HighscoresCompanion(')
          ..write('id: $id, ')
          ..write('score: $score, ')
          ..write('playedAt: $playedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $HighscoresTable highscores = $HighscoresTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [highscores];
}

typedef $$HighscoresTableCreateCompanionBuilder =
    HighscoresCompanion Function({
      Value<int> id,
      required int score,
      required DateTime playedAt,
    });
typedef $$HighscoresTableUpdateCompanionBuilder =
    HighscoresCompanion Function({
      Value<int> id,
      Value<int> score,
      Value<DateTime> playedAt,
    });

class $$HighscoresTableFilterComposer
    extends Composer<_$AppDatabase, $HighscoresTable> {
  $$HighscoresTableFilterComposer({
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

  ColumnFilters<int> get score => $composableBuilder(
    column: $table.score,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get playedAt => $composableBuilder(
    column: $table.playedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$HighscoresTableOrderingComposer
    extends Composer<_$AppDatabase, $HighscoresTable> {
  $$HighscoresTableOrderingComposer({
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

  ColumnOrderings<int> get score => $composableBuilder(
    column: $table.score,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get playedAt => $composableBuilder(
    column: $table.playedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$HighscoresTableAnnotationComposer
    extends Composer<_$AppDatabase, $HighscoresTable> {
  $$HighscoresTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get score =>
      $composableBuilder(column: $table.score, builder: (column) => column);

  GeneratedColumn<DateTime> get playedAt =>
      $composableBuilder(column: $table.playedAt, builder: (column) => column);
}

class $$HighscoresTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HighscoresTable,
          Highscore,
          $$HighscoresTableFilterComposer,
          $$HighscoresTableOrderingComposer,
          $$HighscoresTableAnnotationComposer,
          $$HighscoresTableCreateCompanionBuilder,
          $$HighscoresTableUpdateCompanionBuilder,
          (
            Highscore,
            BaseReferences<_$AppDatabase, $HighscoresTable, Highscore>,
          ),
          Highscore,
          PrefetchHooks Function()
        > {
  $$HighscoresTableTableManager(_$AppDatabase db, $HighscoresTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HighscoresTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HighscoresTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HighscoresTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> score = const Value.absent(),
                Value<DateTime> playedAt = const Value.absent(),
              }) =>
                  HighscoresCompanion(id: id, score: score, playedAt: playedAt),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int score,
                required DateTime playedAt,
              }) => HighscoresCompanion.insert(
                id: id,
                score: score,
                playedAt: playedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$HighscoresTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HighscoresTable,
      Highscore,
      $$HighscoresTableFilterComposer,
      $$HighscoresTableOrderingComposer,
      $$HighscoresTableAnnotationComposer,
      $$HighscoresTableCreateCompanionBuilder,
      $$HighscoresTableUpdateCompanionBuilder,
      (Highscore, BaseReferences<_$AppDatabase, $HighscoresTable, Highscore>),
      Highscore,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$HighscoresTableTableManager get highscores =>
      $$HighscoresTableTableManager(_db, _db.highscores);
}
