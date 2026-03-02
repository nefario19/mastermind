// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameState {

 GameStatus get status; List<Guess> get guesses; List<Color> get secretCode; List<Color?> get currentGuess; int get selectedSlot;
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStateCopyWith<GameState> get copyWith => _$GameStateCopyWithImpl<GameState>(this as GameState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.guesses, guesses)&&const DeepCollectionEquality().equals(other.secretCode, secretCode)&&const DeepCollectionEquality().equals(other.currentGuess, currentGuess)&&(identical(other.selectedSlot, selectedSlot) || other.selectedSlot == selectedSlot));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(guesses),const DeepCollectionEquality().hash(secretCode),const DeepCollectionEquality().hash(currentGuess),selectedSlot);

@override
String toString() {
  return 'GameState(status: $status, guesses: $guesses, secretCode: $secretCode, currentGuess: $currentGuess, selectedSlot: $selectedSlot)';
}


}

/// @nodoc
abstract mixin class $GameStateCopyWith<$Res>  {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) _then) = _$GameStateCopyWithImpl;
@useResult
$Res call({
 GameStatus status, List<Guess> guesses, List<Color> secretCode, List<Color?> currentGuess, int selectedSlot
});




}
/// @nodoc
class _$GameStateCopyWithImpl<$Res>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._self, this._then);

  final GameState _self;
  final $Res Function(GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? guesses = null,Object? secretCode = null,Object? currentGuess = null,Object? selectedSlot = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GameStatus,guesses: null == guesses ? _self.guesses : guesses // ignore: cast_nullable_to_non_nullable
as List<Guess>,secretCode: null == secretCode ? _self.secretCode : secretCode // ignore: cast_nullable_to_non_nullable
as List<Color>,currentGuess: null == currentGuess ? _self.currentGuess : currentGuess // ignore: cast_nullable_to_non_nullable
as List<Color?>,selectedSlot: null == selectedSlot ? _self.selectedSlot : selectedSlot // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GameState].
extension GameStatePatterns on GameState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameState value)  $default,){
final _that = this;
switch (_that) {
case _GameState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameState value)?  $default,){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GameStatus status,  List<Guess> guesses,  List<Color> secretCode,  List<Color?> currentGuess,  int selectedSlot)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.status,_that.guesses,_that.secretCode,_that.currentGuess,_that.selectedSlot);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GameStatus status,  List<Guess> guesses,  List<Color> secretCode,  List<Color?> currentGuess,  int selectedSlot)  $default,) {final _that = this;
switch (_that) {
case _GameState():
return $default(_that.status,_that.guesses,_that.secretCode,_that.currentGuess,_that.selectedSlot);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GameStatus status,  List<Guess> guesses,  List<Color> secretCode,  List<Color?> currentGuess,  int selectedSlot)?  $default,) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.status,_that.guesses,_that.secretCode,_that.currentGuess,_that.selectedSlot);case _:
  return null;

}
}

}

/// @nodoc


class _GameState extends GameState {
  const _GameState({required this.status, required final  List<Guess> guesses, required final  List<Color> secretCode, required final  List<Color?> currentGuess, required this.selectedSlot}): _guesses = guesses,_secretCode = secretCode,_currentGuess = currentGuess,super._();
  

@override final  GameStatus status;
 final  List<Guess> _guesses;
@override List<Guess> get guesses {
  if (_guesses is EqualUnmodifiableListView) return _guesses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_guesses);
}

 final  List<Color> _secretCode;
@override List<Color> get secretCode {
  if (_secretCode is EqualUnmodifiableListView) return _secretCode;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_secretCode);
}

 final  List<Color?> _currentGuess;
@override List<Color?> get currentGuess {
  if (_currentGuess is EqualUnmodifiableListView) return _currentGuess;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currentGuess);
}

@override final  int selectedSlot;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStateCopyWith<_GameState> get copyWith => __$GameStateCopyWithImpl<_GameState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._guesses, _guesses)&&const DeepCollectionEquality().equals(other._secretCode, _secretCode)&&const DeepCollectionEquality().equals(other._currentGuess, _currentGuess)&&(identical(other.selectedSlot, selectedSlot) || other.selectedSlot == selectedSlot));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_guesses),const DeepCollectionEquality().hash(_secretCode),const DeepCollectionEquality().hash(_currentGuess),selectedSlot);

@override
String toString() {
  return 'GameState(status: $status, guesses: $guesses, secretCode: $secretCode, currentGuess: $currentGuess, selectedSlot: $selectedSlot)';
}


}

/// @nodoc
abstract mixin class _$GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$GameStateCopyWith(_GameState value, $Res Function(_GameState) _then) = __$GameStateCopyWithImpl;
@override @useResult
$Res call({
 GameStatus status, List<Guess> guesses, List<Color> secretCode, List<Color?> currentGuess, int selectedSlot
});




}
/// @nodoc
class __$GameStateCopyWithImpl<$Res>
    implements _$GameStateCopyWith<$Res> {
  __$GameStateCopyWithImpl(this._self, this._then);

  final _GameState _self;
  final $Res Function(_GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? guesses = null,Object? secretCode = null,Object? currentGuess = null,Object? selectedSlot = null,}) {
  return _then(_GameState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GameStatus,guesses: null == guesses ? _self._guesses : guesses // ignore: cast_nullable_to_non_nullable
as List<Guess>,secretCode: null == secretCode ? _self._secretCode : secretCode // ignore: cast_nullable_to_non_nullable
as List<Color>,currentGuess: null == currentGuess ? _self._currentGuess : currentGuess // ignore: cast_nullable_to_non_nullable
as List<Color?>,selectedSlot: null == selectedSlot ? _self.selectedSlot : selectedSlot // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
