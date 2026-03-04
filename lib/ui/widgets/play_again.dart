import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mastermind/bloc/game_bloc.dart';
import 'package:mastermind/models/game_event.dart';

class PlayAgain extends StatelessWidget {
  const PlayAgain({
    super.key,
    required Animation<double> fadeAnimation,
    required this.backgroundColor,
    required this.textColor,
  });

  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Play again
        GestureDetector(
          onTap: () {
            context.read<GameBloc>().add(const GameEvent.gameStarted());
            context.go('/');
          },
          child: Container(
            height: 56,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: backgroundColor.withValues(alpha: 0.35),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Center(
              child: Text(
                'PLAY AGAIN',
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
