import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'guess.freezed.dart';

@freezed
abstract class Guess with _$Guess {
  const Guess._();

  const factory Guess({
    required List<Color> colors,
    required int blackPins,
    required int whitePins,
  }) = _Guess;
}
