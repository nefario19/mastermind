// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guess.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Guess {

 List<Color> get colors; int get blackPins; int get whitePins; DateTime? get createdAt;
/// Create a copy of Guess
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuessCopyWith<Guess> get copyWith => _$GuessCopyWithImpl<Guess>(this as Guess, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Guess&&const DeepCollectionEquality().equals(other.colors, colors)&&(identical(other.blackPins, blackPins) || other.blackPins == blackPins)&&(identical(other.whitePins, whitePins) || other.whitePins == whitePins)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(colors),blackPins,whitePins,createdAt);

@override
String toString() {
  return 'Guess(colors: $colors, blackPins: $blackPins, whitePins: $whitePins, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $GuessCopyWith<$Res>  {
  factory $GuessCopyWith(Guess value, $Res Function(Guess) _then) = _$GuessCopyWithImpl;
@useResult
$Res call({
 List<Color> colors, int blackPins, int whitePins, DateTime? createdAt
});




}
/// @nodoc
class _$GuessCopyWithImpl<$Res>
    implements $GuessCopyWith<$Res> {
  _$GuessCopyWithImpl(this._self, this._then);

  final Guess _self;
  final $Res Function(Guess) _then;

/// Create a copy of Guess
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? colors = null,Object? blackPins = null,Object? whitePins = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
colors: null == colors ? _self.colors : colors // ignore: cast_nullable_to_non_nullable
as List<Color>,blackPins: null == blackPins ? _self.blackPins : blackPins // ignore: cast_nullable_to_non_nullable
as int,whitePins: null == whitePins ? _self.whitePins : whitePins // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Guess].
extension GuessPatterns on Guess {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Guess value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Guess() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Guess value)  $default,){
final _that = this;
switch (_that) {
case _Guess():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Guess value)?  $default,){
final _that = this;
switch (_that) {
case _Guess() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Color> colors,  int blackPins,  int whitePins,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Guess() when $default != null:
return $default(_that.colors,_that.blackPins,_that.whitePins,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Color> colors,  int blackPins,  int whitePins,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Guess():
return $default(_that.colors,_that.blackPins,_that.whitePins,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Color> colors,  int blackPins,  int whitePins,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Guess() when $default != null:
return $default(_that.colors,_that.blackPins,_that.whitePins,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _Guess extends Guess {
  const _Guess({required final  List<Color> colors, required this.blackPins, required this.whitePins, this.createdAt = null}): _colors = colors,super._();
  

 final  List<Color> _colors;
@override List<Color> get colors {
  if (_colors is EqualUnmodifiableListView) return _colors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_colors);
}

@override final  int blackPins;
@override final  int whitePins;
@override@JsonKey() final  DateTime? createdAt;

/// Create a copy of Guess
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GuessCopyWith<_Guess> get copyWith => __$GuessCopyWithImpl<_Guess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Guess&&const DeepCollectionEquality().equals(other._colors, _colors)&&(identical(other.blackPins, blackPins) || other.blackPins == blackPins)&&(identical(other.whitePins, whitePins) || other.whitePins == whitePins)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_colors),blackPins,whitePins,createdAt);

@override
String toString() {
  return 'Guess(colors: $colors, blackPins: $blackPins, whitePins: $whitePins, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$GuessCopyWith<$Res> implements $GuessCopyWith<$Res> {
  factory _$GuessCopyWith(_Guess value, $Res Function(_Guess) _then) = __$GuessCopyWithImpl;
@override @useResult
$Res call({
 List<Color> colors, int blackPins, int whitePins, DateTime? createdAt
});




}
/// @nodoc
class __$GuessCopyWithImpl<$Res>
    implements _$GuessCopyWith<$Res> {
  __$GuessCopyWithImpl(this._self, this._then);

  final _Guess _self;
  final $Res Function(_Guess) _then;

/// Create a copy of Guess
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? colors = null,Object? blackPins = null,Object? whitePins = null,Object? createdAt = freezed,}) {
  return _then(_Guess(
colors: null == colors ? _self._colors : colors // ignore: cast_nullable_to_non_nullable
as List<Color>,blackPins: null == blackPins ? _self.blackPins : blackPins // ignore: cast_nullable_to_non_nullable
as int,whitePins: null == whitePins ? _self.whitePins : whitePins // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
