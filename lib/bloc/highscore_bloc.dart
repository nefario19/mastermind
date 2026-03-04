import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastermind/data/database.dart';
import 'package:mastermind/locator.dart';
import 'package:mastermind/models/highscore_event.dart';
import 'package:mastermind/models/highscore_state.dart';

class HighscoreBloc extends Bloc<HighscoreEvent, HighscoreState> {
  final db = locator<AppDatabase>();

  HighscoreBloc() : super(const HighscoreState.loading()) {
    on<LoadHighscores>(_onLoadHighscores);
  }

  Future<void> _onLoadHighscores(
    LoadHighscores event,
    Emitter<HighscoreState> emit,
  ) async {
    emit(const HighscoreState.loading());
    final scores = await db.getHighscores();
    emit(HighscoreState.loaded(scores));
  }
}