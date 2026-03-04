import 'package:flutter/material.dart';

class ScoreTile extends StatelessWidget {
  final String label;
  final String value;
  final bool highlight;

  const ScoreTile({
    super.key,
    required this.label,
    required this.value,
    this.highlight = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: highlight ? 24 : 20,
            fontWeight: FontWeight.w800,
            color: highlight ? const Color(0xFF00C853) : Colors.white,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 10,
            color: Color(0xFF616161),
            letterSpacing: 1.5,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
