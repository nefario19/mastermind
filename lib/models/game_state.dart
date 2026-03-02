import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mastermind/models/game_status.dart';
import 'package:mastermind/models/guess.dart';

part 'game_state.freezed.dart';

@freezed
abstract class GameState with _$GameState {
  const GameState._();

  const factory GameState({
    required GameStatus status,
    required List<Guess> guesses,
    required List<Color> secretCode,
    required List<Color?> currentGuess,
    required int selectedSlot,
  }) = _GameState;
}
