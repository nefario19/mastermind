// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'highscore_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HighscoreState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HighscoreState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HighscoreState()';
}


}

/// @nodoc
class $HighscoreStateCopyWith<$Res>  {
$HighscoreStateCopyWith(HighscoreState _, $Res Function(HighscoreState) __);
}


/// Adds pattern-matching-related methods to [HighscoreState].
extension HighscoreStatePatterns on HighscoreState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HighscoreLoading value)?  loading,TResult Function( HighscoreLoaded value)?  loaded,TResult Function( HighscoreError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HighscoreLoading() when loading != null:
return loading(_that);case HighscoreLoaded() when loaded != null:
return loaded(_that);case HighscoreError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HighscoreLoading value)  loading,required TResult Function( HighscoreLoaded value)  loaded,required TResult Function( HighscoreError value)  error,}){
final _that = this;
switch (_that) {
case HighscoreLoading():
return loading(_that);case HighscoreLoaded():
return loaded(_that);case HighscoreError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HighscoreLoading value)?  loading,TResult? Function( HighscoreLoaded value)?  loaded,TResult? Function( HighscoreError value)?  error,}){
final _that = this;
switch (_that) {
case HighscoreLoading() when loading != null:
return loading(_that);case HighscoreLoaded() when loaded != null:
return loaded(_that);case HighscoreError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<Highscore> highscores)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HighscoreLoading() when loading != null:
return loading();case HighscoreLoaded() when loaded != null:
return loaded(_that.highscores);case HighscoreError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<Highscore> highscores)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case HighscoreLoading():
return loading();case HighscoreLoaded():
return loaded(_that.highscores);case HighscoreError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<Highscore> highscores)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case HighscoreLoading() when loading != null:
return loading();case HighscoreLoaded() when loaded != null:
return loaded(_that.highscores);case HighscoreError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class HighscoreLoading implements HighscoreState {
  const HighscoreLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HighscoreLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HighscoreState.loading()';
}


}




/// @nodoc


class HighscoreLoaded implements HighscoreState {
  const HighscoreLoaded(final  List<Highscore> highscores): _highscores = highscores;
  

 final  List<Highscore> _highscores;
 List<Highscore> get highscores {
  if (_highscores is EqualUnmodifiableListView) return _highscores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_highscores);
}


/// Create a copy of HighscoreState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HighscoreLoadedCopyWith<HighscoreLoaded> get copyWith => _$HighscoreLoadedCopyWithImpl<HighscoreLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HighscoreLoaded&&const DeepCollectionEquality().equals(other._highscores, _highscores));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_highscores));

@override
String toString() {
  return 'HighscoreState.loaded(highscores: $highscores)';
}


}

/// @nodoc
abstract mixin class $HighscoreLoadedCopyWith<$Res> implements $HighscoreStateCopyWith<$Res> {
  factory $HighscoreLoadedCopyWith(HighscoreLoaded value, $Res Function(HighscoreLoaded) _then) = _$HighscoreLoadedCopyWithImpl;
@useResult
$Res call({
 List<Highscore> highscores
});




}
/// @nodoc
class _$HighscoreLoadedCopyWithImpl<$Res>
    implements $HighscoreLoadedCopyWith<$Res> {
  _$HighscoreLoadedCopyWithImpl(this._self, this._then);

  final HighscoreLoaded _self;
  final $Res Function(HighscoreLoaded) _then;

/// Create a copy of HighscoreState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? highscores = null,}) {
  return _then(HighscoreLoaded(
null == highscores ? _self._highscores : highscores // ignore: cast_nullable_to_non_nullable
as List<Highscore>,
  ));
}


}

/// @nodoc


class HighscoreError implements HighscoreState {
  const HighscoreError(this.message);
  

 final  String message;

/// Create a copy of HighscoreState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HighscoreErrorCopyWith<HighscoreError> get copyWith => _$HighscoreErrorCopyWithImpl<HighscoreError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HighscoreError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HighscoreState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $HighscoreErrorCopyWith<$Res> implements $HighscoreStateCopyWith<$Res> {
  factory $HighscoreErrorCopyWith(HighscoreError value, $Res Function(HighscoreError) _then) = _$HighscoreErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$HighscoreErrorCopyWithImpl<$Res>
    implements $HighscoreErrorCopyWith<$Res> {
  _$HighscoreErrorCopyWithImpl(this._self, this._then);

  final HighscoreError _self;
  final $Res Function(HighscoreError) _then;

/// Create a copy of HighscoreState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(HighscoreError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
