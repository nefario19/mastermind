// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent()';
}


}

/// @nodoc
class $GameEventCopyWith<$Res>  {
$GameEventCopyWith(GameEvent _, $Res Function(GameEvent) __);
}


/// Adds pattern-matching-related methods to [GameEvent].
extension GameEventPatterns on GameEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ColorSelected value)?  colorSelected,TResult Function( SlotSelected value)?  slotSelected,TResult Function( GuessSubmitted value)?  guessSubmitted,TResult Function( GameStarted value)?  gameStarted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ColorSelected() when colorSelected != null:
return colorSelected(_that);case SlotSelected() when slotSelected != null:
return slotSelected(_that);case GuessSubmitted() when guessSubmitted != null:
return guessSubmitted(_that);case GameStarted() when gameStarted != null:
return gameStarted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ColorSelected value)  colorSelected,required TResult Function( SlotSelected value)  slotSelected,required TResult Function( GuessSubmitted value)  guessSubmitted,required TResult Function( GameStarted value)  gameStarted,}){
final _that = this;
switch (_that) {
case ColorSelected():
return colorSelected(_that);case SlotSelected():
return slotSelected(_that);case GuessSubmitted():
return guessSubmitted(_that);case GameStarted():
return gameStarted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ColorSelected value)?  colorSelected,TResult? Function( SlotSelected value)?  slotSelected,TResult? Function( GuessSubmitted value)?  guessSubmitted,TResult? Function( GameStarted value)?  gameStarted,}){
final _that = this;
switch (_that) {
case ColorSelected() when colorSelected != null:
return colorSelected(_that);case SlotSelected() when slotSelected != null:
return slotSelected(_that);case GuessSubmitted() when guessSubmitted != null:
return guessSubmitted(_that);case GameStarted() when gameStarted != null:
return gameStarted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Color color)?  colorSelected,TResult Function( int index)?  slotSelected,TResult Function()?  guessSubmitted,TResult Function()?  gameStarted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ColorSelected() when colorSelected != null:
return colorSelected(_that.color);case SlotSelected() when slotSelected != null:
return slotSelected(_that.index);case GuessSubmitted() when guessSubmitted != null:
return guessSubmitted();case GameStarted() when gameStarted != null:
return gameStarted();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Color color)  colorSelected,required TResult Function( int index)  slotSelected,required TResult Function()  guessSubmitted,required TResult Function()  gameStarted,}) {final _that = this;
switch (_that) {
case ColorSelected():
return colorSelected(_that.color);case SlotSelected():
return slotSelected(_that.index);case GuessSubmitted():
return guessSubmitted();case GameStarted():
return gameStarted();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Color color)?  colorSelected,TResult? Function( int index)?  slotSelected,TResult? Function()?  guessSubmitted,TResult? Function()?  gameStarted,}) {final _that = this;
switch (_that) {
case ColorSelected() when colorSelected != null:
return colorSelected(_that.color);case SlotSelected() when slotSelected != null:
return slotSelected(_that.index);case GuessSubmitted() when guessSubmitted != null:
return guessSubmitted();case GameStarted() when gameStarted != null:
return gameStarted();case _:
  return null;

}
}

}

/// @nodoc


class ColorSelected implements GameEvent {
  const ColorSelected(this.color);
  

 final  Color color;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ColorSelectedCopyWith<ColorSelected> get copyWith => _$ColorSelectedCopyWithImpl<ColorSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ColorSelected&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,color);

@override
String toString() {
  return 'GameEvent.colorSelected(color: $color)';
}


}

/// @nodoc
abstract mixin class $ColorSelectedCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory $ColorSelectedCopyWith(ColorSelected value, $Res Function(ColorSelected) _then) = _$ColorSelectedCopyWithImpl;
@useResult
$Res call({
 Color color
});




}
/// @nodoc
class _$ColorSelectedCopyWithImpl<$Res>
    implements $ColorSelectedCopyWith<$Res> {
  _$ColorSelectedCopyWithImpl(this._self, this._then);

  final ColorSelected _self;
  final $Res Function(ColorSelected) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? color = null,}) {
  return _then(ColorSelected(
null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}


}

/// @nodoc


class SlotSelected implements GameEvent {
  const SlotSelected(this.index);
  

 final  int index;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SlotSelectedCopyWith<SlotSelected> get copyWith => _$SlotSelectedCopyWithImpl<SlotSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SlotSelected&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'GameEvent.slotSelected(index: $index)';
}


}

/// @nodoc
abstract mixin class $SlotSelectedCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory $SlotSelectedCopyWith(SlotSelected value, $Res Function(SlotSelected) _then) = _$SlotSelectedCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$SlotSelectedCopyWithImpl<$Res>
    implements $SlotSelectedCopyWith<$Res> {
  _$SlotSelectedCopyWithImpl(this._self, this._then);

  final SlotSelected _self;
  final $Res Function(SlotSelected) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(SlotSelected(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class GuessSubmitted implements GameEvent {
  const GuessSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuessSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.guessSubmitted()';
}


}




/// @nodoc


class GameStarted implements GameEvent {
  const GameStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.gameStarted()';
}


}




// dart format on
