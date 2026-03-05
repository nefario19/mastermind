import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastermind/bloc/game_bloc.dart';
import 'package:mastermind/bloc/highscore_bloc.dart';
import 'package:mastermind/models/highscore_state.dart';
import 'package:mastermind/ui/widgets/score_tile.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({super.key, required Animation<double> fadeAnimation})
    : _fadeAnimation = fadeAnimation;

  final Animation<double> _fadeAnimation;

  @override
  Widget build(BuildContext context) {
    // calc the score
    final attempts = context.watch<GameBloc>().state.guesses.length;

    return BlocBuilder<HighscoreBloc, HighscoreState>(
      builder: (context, state) {
        return FadeTransition(
          opacity: _fadeAnimation,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFF00C853).withValues(alpha: 0.3),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(14),
              color: const Color(0xFF00C853).withValues(alpha: 0.05),
            ),
            child: state.when(
              loading: () => CircularProgressIndicator(),
              loaded: (highscores) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ScoreTile(
                    label: 'SCORE',
                    value: highscores.isEmpty
                        ? '-'
                        : '${highscores.last.score}',
                  ),
                  Container(
                    width: 1,
                    height: 40,
                    color: const Color(0xFF2E2E2E),
                  ),
                  ScoreTile(label: 'ATTEMPTS', value: '$attempts / 10'),
                  Container(
                    width: 1,
                    height: 40,
                    color: const Color(0xFF2E2E2E),
                  ),
                  ScoreTile(
                    label: 'HIGHSCORE',
                    value: highscores.isEmpty
                        ? '-'
                        : '${highscores.first.score}',
                  ),
                ],
              ),
              error: (message) => Text('Fout'),
            ),
          ),
        );
      },
    );
  }
}
