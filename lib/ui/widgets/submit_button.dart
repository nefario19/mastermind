import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastermind/bloc/game_bloc.dart';
import 'package:mastermind/models/game_event.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<GameBloc>().add(GameEvent.guessSubmitted()),
      child: Container(
        height: 52,
        decoration: BoxDecoration(
          color: const Color(0xFF00C853),
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF00C853).withValues(alpha: 0.3),
              blurRadius: 16,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SUBMIT',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 15,
                letterSpacing: 2,
              ),
            ),
            SizedBox(width: 10),
            Icon(Icons.send_rounded, color: Colors.black, size: 18),
          ],
        ),
      ),
    );
  }
}
