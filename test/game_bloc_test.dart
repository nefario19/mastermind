import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mastermind/bloc/game_bloc.dart';
import 'package:mastermind/data/database.dart';
import 'package:mastermind/locator.dart';
import 'package:mastermind/models/game_event.dart';
import 'package:mastermind/models/game_state.dart';
import 'package:mastermind/models/game_status.dart';
import 'package:mockito/annotations.dart';

import 'game_bloc_test.mocks.dart';

@GenerateMocks([AppDatabase])
void main() {
  setup() => setupLocator();
  group('GameBloc', () {
    setup();
    test('initial state heeft 0 guesses en status playing', () {
      final bloc = GameBloc();
      expect(bloc.state.guesses, isEmpty);
      expect(bloc.state.status, GameStatus.playing);
    });

    blocTest<GameBloc, GameState>(
      'Game calculates 4 pins and winning condition',
      build: () => GameBloc(
        secretCode: [Colors.red, Colors.blue, Colors.green, Colors.yellow],
        database: MockAppDatabase(),
      ),
      act: (bloc) async {
        bloc.add(const SlotSelected(0));
        bloc.add(const ColorSelected(Colors.red));
        bloc.add(const SlotSelected(1));
        bloc.add(const ColorSelected(Colors.blue));
        bloc.add(const SlotSelected(2));
        bloc.add(const ColorSelected(Colors.green));
        bloc.add(const SlotSelected(3));
        bloc.add(const ColorSelected(Colors.yellow));
        bloc.add(const GuessSubmitted());
      },
      verify: (bloc) {
        expect(bloc.state.status, GameStatus.won);
        expect(bloc.state.guesses.last.blackPins, 4);
        expect(bloc.state.guesses.last.whitePins, 0);
      },
    );

    blocTest<GameBloc, GameState>(
      'Game calculates only white pins',
      build: () => GameBloc(
        secretCode: [Colors.blue, Colors.red, Colors.yellow, Colors.green],
      ),
      act: (bloc) async {
        bloc.add(const SlotSelected(0));
        bloc.add(const ColorSelected(Colors.red));
        bloc.add(const SlotSelected(1));
        bloc.add(const ColorSelected(Colors.blue));
        bloc.add(const SlotSelected(2));
        bloc.add(const ColorSelected(Colors.green));
        bloc.add(const SlotSelected(3));
        bloc.add(const ColorSelected(Colors.yellow));
        bloc.add(const GuessSubmitted());
      },
      verify: (bloc) {
        expect(bloc.state.status, GameStatus.playing);
        expect(bloc.state.guesses.last.blackPins, 0);
        expect(bloc.state.guesses.last.whitePins, 4);
      },
    );

    blocTest<GameBloc, GameState>(
      'Game calculates partial black and white pins',
      build: () => GameBloc(
        secretCode: [Colors.red, Colors.blue, Colors.yellow, Colors.green],
      ),
      act: (bloc) async {
        bloc.add(const SlotSelected(0));
        bloc.add(const ColorSelected(Colors.red));
        bloc.add(const SlotSelected(1));
        bloc.add(const ColorSelected(Colors.blue));
        bloc.add(const SlotSelected(2));
        bloc.add(const ColorSelected(Colors.green));
        bloc.add(const SlotSelected(3));
        bloc.add(const ColorSelected(Colors.yellow));
        bloc.add(const GuessSubmitted());
      },
      verify: (bloc) {
        expect(bloc.state.status, GameStatus.playing);
        expect(bloc.state.guesses.last.blackPins, 2);
        expect(bloc.state.guesses.last.whitePins, 2);
      },
    );

    blocTest<GameBloc, GameState>(
      'Game calculates partial empty pins',
      build: () => GameBloc(
        secretCode: [Colors.amber, Colors.blue, Colors.yellow, Colors.green],
      ),
      act: (bloc) async {
        bloc.add(const SlotSelected(0));
        bloc.add(const ColorSelected(Colors.red));
        bloc.add(const SlotSelected(1));
        bloc.add(const ColorSelected(Colors.blue));
        bloc.add(const SlotSelected(2));
        bloc.add(const ColorSelected(Colors.green));
        bloc.add(const SlotSelected(3));
        bloc.add(const ColorSelected(Colors.yellow));
        bloc.add(const GuessSubmitted());
      },
      verify: (bloc) {
        expect(bloc.state.status, GameStatus.playing);
        expect(bloc.state.guesses.last.blackPins, 1);
        expect(bloc.state.guesses.last.whitePins, 2);
      },
    );

    blocTest<GameBloc, GameState>(
      'Game calculates losing condition after 10 attempts',
      build: () => GameBloc(
        secretCode: [Colors.red, Colors.blue, Colors.yellow, Colors.green],
      ),
      act: (bloc) {
        for (int i = 0; i < 10; i++) {
          bloc.add(const ColorSelected(Colors.red));
          bloc.add(const SlotSelected(1));
          bloc.add(const ColorSelected(Colors.blue));
          bloc.add(const SlotSelected(2));
          bloc.add(const ColorSelected(Colors.green));
          bloc.add(const SlotSelected(3));
          bloc.add(const ColorSelected(Colors.yellow));

          bloc.add(const GuessSubmitted());
        }
      },
      verify: (bloc) {
        expect(bloc.state.status, GameStatus.lost);
        expect(bloc.state.guesses.length, 10);
        expect(bloc.state.guesses.last.blackPins, 2);
        expect(bloc.state.guesses.last.whitePins, 2);
      },
    );
  });
}
