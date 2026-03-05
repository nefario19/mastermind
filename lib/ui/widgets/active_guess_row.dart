import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastermind/bloc/game_bloc.dart';
import 'package:mastermind/models/game_event.dart';

class ActiveGuessRow extends StatelessWidget {
  final List<Color?> currentGuess;

  const ActiveGuessRow({super.key, required this.currentGuess});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFF00C853).withValues(alpha: 0.4),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF00C853).withValues(alpha: 0.08),
            blurRadius: 12,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: currentGuess.asMap().entries.map((entry) {
            final index = entry.key;
            final color = entry.value;

            return Expanded(
              child: GestureDetector(
                onTap: () =>
                    context.read<GameBloc>().add(GameEvent.slotSelected(index)),
                child: Center(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: color != null ? 38 : 28,
                    height: color != null ? 38 : 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color ?? Colors.transparent,
                      border: Border.all(
                        color: color != null
                            ? color.withValues(alpha: 0.6)
                            : const Color(0xFF424242),
                        width: color != null ? 0 : 2,
                      ),
                      boxShadow: color != null
                          ? [
                              BoxShadow(
                                color: color.withValues(alpha: 0.5),
                                blurRadius: 10,
                                spreadRadius: 2,
                              ),
                            ]
                          : null,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
