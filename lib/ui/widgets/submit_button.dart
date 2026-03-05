import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastermind/bloc/game_bloc.dart';
import 'package:mastermind/models/game_event.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final guessIsNotFilled = context
            .read<GameBloc>()
            .state
            .currentGuess
            .any((colorOption) => colorOption == null);

        if (guessIsNotFilled) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Row(
                children: [
                  Icon(Icons.warning_amber_rounded, color: Colors.orange),
                  SizedBox(width: 12),
                  Text(
                    'Use 4 colors to submit!',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
              backgroundColor: const Color(0xFF1A1A1A),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Colors.orange.withValues(alpha: 0.5)),
              ),
              margin: EdgeInsets.all(16),
              duration: Duration(seconds: 2),
            ),
          );
        } else {
          context.read<GameBloc>().add(GameEvent.guessSubmitted());
        }
      },
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
