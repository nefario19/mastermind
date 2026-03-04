import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastermind/bloc/game_bloc.dart';
import 'package:mastermind/router.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => GameBloc(),
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
