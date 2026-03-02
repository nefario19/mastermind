import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_event.freezed.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.colorSelected(Color color) = ColorSelected;
  const factory GameEvent.slotSelected(int index) = SlotSelected;
  const factory GameEvent.guessSubmitted() = GuessSubmitted;
  const factory GameEvent.gameStarted() = GameStarted;
}
