// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_player_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SongPlayerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SongPlayerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SongPlayerState()';
}


}

/// @nodoc
class $SongPlayerStateCopyWith<$Res>  {
$SongPlayerStateCopyWith(SongPlayerState _, $Res Function(SongPlayerState) __);
}


/// Adds pattern-matching-related methods to [SongPlayerState].
extension SongPlayerStatePatterns on SongPlayerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SongPlayerLoading value)?  loading,TResult Function( SongPlayerSuccess value)?  success,TResult Function( SongPlayerFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SongPlayerLoading() when loading != null:
return loading(_that);case SongPlayerSuccess() when success != null:
return success(_that);case SongPlayerFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SongPlayerLoading value)  loading,required TResult Function( SongPlayerSuccess value)  success,required TResult Function( SongPlayerFailure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SongPlayerLoading():
return loading(_that);case SongPlayerSuccess():
return success(_that);case SongPlayerFailure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SongPlayerLoading value)?  loading,TResult? Function( SongPlayerSuccess value)?  success,TResult? Function( SongPlayerFailure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SongPlayerLoading() when loading != null:
return loading(_that);case SongPlayerSuccess() when success != null:
return success(_that);case SongPlayerFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( double position,  double duration,  bool isPlaying)?  success,TResult Function()?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SongPlayerLoading() when loading != null:
return loading();case SongPlayerSuccess() when success != null:
return success(_that.position,_that.duration,_that.isPlaying);case SongPlayerFailure() when failure != null:
return failure();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( double position,  double duration,  bool isPlaying)  success,required TResult Function()  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SongPlayerLoading():
return loading();case SongPlayerSuccess():
return success(_that.position,_that.duration,_that.isPlaying);case SongPlayerFailure():
return failure();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( double position,  double duration,  bool isPlaying)?  success,TResult? Function()?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SongPlayerLoading() when loading != null:
return loading();case SongPlayerSuccess() when success != null:
return success(_that.position,_that.duration,_that.isPlaying);case SongPlayerFailure() when failure != null:
return failure();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SongPlayerState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SongPlayerState.initial()';
}


}




/// @nodoc


class SongPlayerLoading implements SongPlayerState {
  const SongPlayerLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SongPlayerLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SongPlayerState.loading()';
}


}




/// @nodoc


class SongPlayerSuccess implements SongPlayerState {
  const SongPlayerSuccess({required this.position, required this.duration, required this.isPlaying});
  

 final  double position;
 final  double duration;
 final  bool isPlaying;

/// Create a copy of SongPlayerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SongPlayerSuccessCopyWith<SongPlayerSuccess> get copyWith => _$SongPlayerSuccessCopyWithImpl<SongPlayerSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SongPlayerSuccess&&(identical(other.position, position) || other.position == position)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.isPlaying, isPlaying) || other.isPlaying == isPlaying));
}


@override
int get hashCode => Object.hash(runtimeType,position,duration,isPlaying);

@override
String toString() {
  return 'SongPlayerState.success(position: $position, duration: $duration, isPlaying: $isPlaying)';
}


}

/// @nodoc
abstract mixin class $SongPlayerSuccessCopyWith<$Res> implements $SongPlayerStateCopyWith<$Res> {
  factory $SongPlayerSuccessCopyWith(SongPlayerSuccess value, $Res Function(SongPlayerSuccess) _then) = _$SongPlayerSuccessCopyWithImpl;
@useResult
$Res call({
 double position, double duration, bool isPlaying
});




}
/// @nodoc
class _$SongPlayerSuccessCopyWithImpl<$Res>
    implements $SongPlayerSuccessCopyWith<$Res> {
  _$SongPlayerSuccessCopyWithImpl(this._self, this._then);

  final SongPlayerSuccess _self;
  final $Res Function(SongPlayerSuccess) _then;

/// Create a copy of SongPlayerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? position = null,Object? duration = null,Object? isPlaying = null,}) {
  return _then(SongPlayerSuccess(
position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as double,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,isPlaying: null == isPlaying ? _self.isPlaying : isPlaying // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SongPlayerFailure implements SongPlayerState {
  const SongPlayerFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SongPlayerFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SongPlayerState.failure()';
}


}




// dart format on
