import 'package:flutter/material.dart';
import 'package:mastermind/models/guess.dart';

class GuessRow extends StatelessWidget {
  final Guess guess;
  final int attemptNumber;

  const GuessRow({super.key, required this.guess, required this.attemptNumber});

  @override
  Widget build(BuildContext context) {
    final pins = [
      ...List.filled(guess.blackPins, const Color(0xFFFFFFFF)),
      ...List.filled(guess.whitePins, const Color(0xFF9E9E9E)),
      ...List.filled(4 - guess.blackPins - guess.whitePins, Colors.transparent),
    ];

    return Row(
      children: [
        // Attempt number
        SizedBox(
          width: 24,
          child: Text(
            '$attemptNumber',
            style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 12,
              fontFamily: 'monospace',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        const SizedBox(width: 8),

        // Color slots
        Expanded(
          child: Container(
            height: 52,
            decoration: BoxDecoration(
              color: const Color(0xFF1A1A1A),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFF2A2A2A)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: guess.colors.map((color) {
                  return Expanded(
                    child: Center(
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: color,
                          boxShadow: [
                            BoxShadow(
                              color: color.withValues(alpha: 0.4),
                              blurRadius: 8,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),

        const SizedBox(width: 10),

        // Pin grid
        SizedBox(
          width: 48,
          height: 52,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF1A1A1A),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFF2A2A2A)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Wrap(
                spacing: 4,
                runSpacing: 4,
                children: pins.map((color) {
                  return Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color == Colors.transparent
                          ? const Color(0xFF2A2A2A)
                          : color,
                      border: color == Colors.transparent
                          ? Border.all(color: const Color(0xFF333333))
                          : null,
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
