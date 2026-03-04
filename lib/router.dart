import 'package:go_router/go_router.dart';
import 'package:mastermind/ui/views/game_view.dart';
import 'package:mastermind/ui/views/lost_view.dart';
import 'package:mastermind/ui/views/won_view.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => GameScreen(),
    ),
    GoRoute(
      path: '/won',
      builder: (context, state) => WonView(),
    ),
    GoRoute(
      path: '/lost',
      builder: (context, state) => LostView(),
    ),
  ],
);