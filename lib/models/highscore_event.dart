import 'package:freezed_annotation/freezed_annotation.dart';

part 'highscore_event.freezed.dart';

@freezed
class HighscoreEvent with _$HighscoreEvent {
  const factory HighscoreEvent.loadHighscores() = LoadHighscores;
}