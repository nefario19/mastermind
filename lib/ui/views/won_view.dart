import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mastermind/bloc/game_bloc.dart';
import 'package:mastermind/bloc/highscore_bloc.dart';
import 'package:mastermind/models/game_event.dart';
import 'package:mastermind/models/game_state.dart';
import 'package:mastermind/models/highscore_event.dart';
import 'package:mastermind/ui/widgets/score_card.dart';

class WonView extends StatefulWidget {
  const WonView({super.key});

  @override
  State<WonView> createState() => _WonViewState();
}

class _WonViewState extends State<WonView> with TickerProviderStateMixin {
  late AnimationController _fadeController;
  late AnimationController _scaleController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _scaleController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeIn,
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _scaleController, curve: Curves.elasticOut),
    );

    _fadeController.forward();
    Future.delayed(const Duration(milliseconds: 150), () {
      _scaleController.forward();
    });

    context.read<HighscoreBloc>().add(const HighscoreEvent.loadHighscores());
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        final attempts = state.guesses.length;
        return Scaffold(
          backgroundColor: const Color(0xFF0A1A0A),
          body: Stack(
            children: [
              CustomPaint(painter: _GreenGridPainter(), size: Size.infinite),
              Positioned(
                top: -80,
                left: 0,
                right: 0,
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        const Color(0xFF00C853).withValues(alpha: 0.25),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),

              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(flex: 2),

                      // trophy
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: ScaleTransition(
                          scale: _scaleAnimation,
                          child: const Text(
                            '🏆',
                            style: TextStyle(fontSize: 64),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // you win title
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: ScaleTransition(
                          scale: _scaleAnimation,
                          child: const Text(
                            'YOU\nWON!',
                            style: TextStyle(
                              fontFamily: 'monospace',
                              fontSize: 72,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF00C853),
                              height: 0.95,
                              letterSpacing: -2,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Attempts
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: Text(
                          'Code hacked in $attempts ${attempts == 1 ? 'attempts' : 'attempts'}.',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xFF9E9E9E),
                            height: 1.6,
                            letterSpacing: 0.3,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // score card
                      ScoreCard(
                        fadeAnimation: _fadeAnimation,
                      ),

                      const Spacer(flex: 3),

                      // Buttons
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // Play again
                            GestureDetector(
                              onTap: () {
                                context.read<GameBloc>().add(
                                  const GameEvent.gameStarted(),
                                );
                                context.go('/');
                              },
                              child: Container(
                                height: 56,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF00C853),
                                  borderRadius: BorderRadius.circular(14),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(
                                        0xFF00C853,
                                      ).withValues(alpha: 0.35),
                                      blurRadius: 20,
                                      offset: const Offset(0, 8),
                                    ),
                                  ],
                                ),
                                child: const Center(
                                  child: Text(
                                    'PLAY AGAIN',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15,
                                      letterSpacing: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 12),

                            // Hire me button 😏
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 56,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(
                                    color: const Color(
                                      0xFF00C853,
                                    ).withValues(alpha: 0.4),
                                    width: 1.5,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    '>> Hire Taif 😏 <<',
                                    style: TextStyle(
                                      color: Color(0xFF00C853),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _GreenGridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF0F1F0F)
      ..strokeWidth = 1;

    const spacing = 40.0;

    for (double x = 0; x < size.width; x += spacing) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }
    for (double y = 0; y < size.height; y += spacing) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
