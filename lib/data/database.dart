import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';

part 'database.g.dart';

class Highscores extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get score => integer()();
  DateTimeColumn get playedAt => dateTime()();
}

@DriftDatabase(tables: [Highscores])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<Highscore>> getHighscores() =>
      (select(highscores)..orderBy([(h) => OrderingTerm.desc(h.score)])).get();

  Future<void> insertScore(int score) => into(highscores).insert(
    HighscoresCompanion(score: Value(score), playedAt: Value(DateTime.now())),
  );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'mastermind.db'));
    return NativeDatabase(file);
  });
}
