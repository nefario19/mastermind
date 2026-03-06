import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastermind/data/database.dart';
import 'package:mastermind/locator.dart';
import 'package:mastermind/models/game_event.dart';
import 'package:mastermind/models/game_state.dart';
import 'package:mastermind/models/game_status.dart';
import 'package:mastermind/models/guess.dart';

const List<Color> colorOptions = [
  Colors.red,
  Colors.white,
  Colors.blue,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.purple,
  Colors.pink,
];

class GameBloc extends Bloc<GameEvent, GameState> {
  final AppDatabase db;
  GameBloc({List<Color>? secretCode, AppDatabase? database})
      : db = database ?? locator<AppDatabase>(),
        super(
          secretCode != null
              ? GameState(
                  secretCode: secretCode,
                  guesses: [],
                  currentGuess: [null, null, null, null],
                  selectedSlot: 0,
                  status: GameStatus.playing,
                )
              : _initialState(),
        ) {
    on<ColorSelected>(_onColorSelected);
    on<SlotSelected>(_onSlotSelected);
    on<GuessSubmitted>(_onGuessSubmitted);
    on<GameStarted>(_onGameStarted);
  }

  static GameState _initialState() {
    final List<Color> secretCode = [];

    for (int i = 0; i < 4; i++) {
      final randomNumber = Random.secure().nextInt(colorOptions.length);
      secretCode.add(colorOptions.elementAt(randomNumber));
    }
    return GameState(
      secretCode: secretCode,
      guesses: [],
      currentGuess: [null, null, null, null],
      selectedSlot: 0,
      status: GameStatus.playing,
    );
  }

  void _onSlotSelected(SlotSelected event, Emitter<GameState> emit) {
    final newCurrentGuess = List<Color?>.from(state.currentGuess);
    newCurrentGuess[event.index] = null;
    emit(
      state.copyWith(currentGuess: newCurrentGuess, selectedSlot: event.index),
    );
  }

  void _onColorSelected(ColorSelected event, Emitter<GameState> emit) {
    final newCurrentGuess = List<Color?>.from(state.currentGuess);
    newCurrentGuess[state.selectedSlot] = event.color;

    final nextSlot = (state.selectedSlot + 1).clamp(0, 3);

    emit(state.copyWith(currentGuess: newCurrentGuess, selectedSlot: nextSlot));
  }

  void _onGuessSubmitted(GuessSubmitted event, Emitter<GameState> emit) {
    final List<Color> filledGuess =
        state.currentGuess.whereType<Color>().toList();

    if (filledGuess.length < 4) return;

    final List<Color> secretCopy = List<Color>.from(state.secretCode);
    final List<Color> guessCopy = List<Color>.from(filledGuess);

    final List<int> blackPins = [];
    for (int i = secretCopy.length - 1; i >= 0; i--) {
      if (secretCopy[i] == guessCopy[i]) {
        blackPins.add(1);
        secretCopy.removeAt(i);
        guessCopy.removeAt(i);
      }
    }

    int whitePinCount = 0;
    for (final color in secretCopy) {
      if (guessCopy.contains(color)) {
        whitePinCount++;
        guessCopy.remove(color);
      }
    }

    final newGuess = Guess(
      colors: filledGuess,
      blackPins: blackPins.length,
      whitePins: whitePinCount,
    );

    final List<Guess> allGuessesInSession = [...state.guesses, newGuess];

    GameStatus newStatus = GameStatus.playing;
    if (blackPins.length == 4) {
      db.insertScore((10 - allGuessesInSession.length) * 10);
      newStatus = GameStatus.won;
    } else if (allGuessesInSession.length >= 10) {
      newStatus = GameStatus.lost;
    }

    emit(
      state.copyWith(
        guesses: allGuessesInSession,
        currentGuess: [null, null, null, null],
        selectedSlot: 0,
        status: newStatus,
      ),
    );
  }

  void _onGameStarted(GameStarted event, Emitter<GameState> emit) {
    emit(_initialState());
  }
}
