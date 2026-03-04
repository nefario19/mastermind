import 'package:get_it/get_it.dart';
import 'package:mastermind/data/database.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<AppDatabase>(AppDatabase());
}
