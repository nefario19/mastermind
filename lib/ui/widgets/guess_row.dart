import 'package:flutter/material.dart';
import 'package:mastermind/models/guess.dart';

class GuessRow extends StatefulWidget {
  final Guess guess;
  final int attemptNumber;

  const GuessRow({super.key, required this.guess, required this.attemptNumber});

  @override
  State<GuessRow> createState() => _GuessRowState();
}

class _GuessRowState extends State<GuessRow> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 600),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticOut));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pins = [
      ...List.filled(widget.guess.blackPins, const Color(0xFFFFFFFF)),
      ...List.filled(widget.guess.whitePins, const Color(0xFF9E9E9E)),
      ...List.filled(
        4 - widget.guess.blackPins - widget.guess.whitePins,
        Colors.transparent,
      ),
    ];

    return ScaleTransition(
      scale: _animation,
      child: Row(
        children: [
          // Attempt number
          SizedBox(
            width: 24,
            child: Text(
              '${widget.attemptNumber}',
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
                  children: widget.guess.colors.map((color) {
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
      ),
    );
  }
}
