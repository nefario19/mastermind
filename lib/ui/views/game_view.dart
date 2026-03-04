import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastermind/bloc/game_bloc.dart';
import 'package:mastermind/models/game_state.dart';
import 'package:mastermind/models/game_status.dart';
import 'package:go_router/go_router.dart';
import 'package:mastermind/ui/widgets/color_picker.dart';
import 'package:mastermind/ui/widgets/active_guess_row.dart';
import 'package:mastermind/ui/widgets/guess_row.dart';
import 'package:mastermind/ui/widgets/submit_button.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GameBloc, GameState>(
      listener: (context, state) {
        if (state.status == GameStatus.playing) {
          context.go('/won');
        } else if (state.status == GameStatus.lost) {
          context.go('/lost');
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF0D0D0D),
        appBar: AppBar(
          backgroundColor: const Color(0xFF0D0D0D),
          centerTitle: true,
          title: const Text(
            'MASTERMIND',
            style: TextStyle(
              fontFamily: 'monospace',
              fontWeight: FontWeight.w900,
              fontSize: 20,
              letterSpacing: 4,
              color: Colors.white,
            ),
          ),
        ),
        body: BlocBuilder<GameBloc, GameState>(
          builder: (context, state) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    // Guess history
                    Expanded(
                      child: state.guesses.isEmpty
                          ? _EmptyState()
                          : ListView.separated(
                              padding: const EdgeInsets.only(top: 12),
                              itemCount: state.guesses.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(height: 10),
                              itemBuilder: (context, index) => GuessRow(
                                guess: state.guesses[index],
                                attemptNumber: index + 1,
                              ),
                            ),
                    ),

                    const SizedBox(height: 12),

                    ActiveGuessRow(currentGuess: state.currentGuess),

                    const SizedBox(height: 16),

                    SubmitButton(),

                    const SizedBox(height: 16),

                    ColorPicker(),

                    const SizedBox(height: 16),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Kies 4 kleuren\nen druk submit',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF424242),
          fontSize: 16,
          letterSpacing: 0.5,
          height: 1.8,
        ),
      ),
    );
  }
}
