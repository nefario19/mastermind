import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mastermind/data/database.dart';

part 'highscore_state.freezed.dart';

@freezed
class HighscoreState with _$HighscoreState {
  const factory HighscoreState.loading() = HighscoreLoading;
  const factory HighscoreState.loaded(List<Highscore> highscores) = HighscoreLoaded;
  const factory HighscoreState.error(String message) = HighscoreError;
}