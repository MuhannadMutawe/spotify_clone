// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_news_songs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetNewsSongsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNewsSongsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetNewsSongsState()';
}


}

/// @nodoc
class $GetNewsSongsStateCopyWith<$Res>  {
$GetNewsSongsStateCopyWith(GetNewsSongsState _, $Res Function(GetNewsSongsState) __);
}


/// Adds pattern-matching-related methods to [GetNewsSongsState].
extension GetNewsSongsStatePatterns on GetNewsSongsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( GetNewsSongsLoading value)?  loading,TResult Function( GetNewsSongsSuccess value)?  success,TResult Function( GetNewsSongsFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetNewsSongsLoading() when loading != null:
return loading(_that);case GetNewsSongsSuccess() when success != null:
return success(_that);case GetNewsSongsFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( GetNewsSongsLoading value)  loading,required TResult Function( GetNewsSongsSuccess value)  success,required TResult Function( GetNewsSongsFailure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case GetNewsSongsLoading():
return loading(_that);case GetNewsSongsSuccess():
return success(_that);case GetNewsSongsFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( GetNewsSongsLoading value)?  loading,TResult? Function( GetNewsSongsSuccess value)?  success,TResult? Function( GetNewsSongsFailure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetNewsSongsLoading() when loading != null:
return loading(_that);case GetNewsSongsSuccess() when success != null:
return success(_that);case GetNewsSongsFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<SongEntity> songs)?  success,TResult Function( String errorMessage)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetNewsSongsLoading() when loading != null:
return loading();case GetNewsSongsSuccess() when success != null:
return success(_that.songs);case GetNewsSongsFailure() when failure != null:
return failure(_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<SongEntity> songs)  success,required TResult Function( String errorMessage)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case GetNewsSongsLoading():
return loading();case GetNewsSongsSuccess():
return success(_that.songs);case GetNewsSongsFailure():
return failure(_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<SongEntity> songs)?  success,TResult? Function( String errorMessage)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetNewsSongsLoading() when loading != null:
return loading();case GetNewsSongsSuccess() when success != null:
return success(_that.songs);case GetNewsSongsFailure() when failure != null:
return failure(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements GetNewsSongsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetNewsSongsState.initial()';
}


}




/// @nodoc


class GetNewsSongsLoading implements GetNewsSongsState {
  const GetNewsSongsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNewsSongsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetNewsSongsState.loading()';
}


}




/// @nodoc


class GetNewsSongsSuccess implements GetNewsSongsState {
  const GetNewsSongsSuccess(final  List<SongEntity> songs): _songs = songs;
  

 final  List<SongEntity> _songs;
 List<SongEntity> get songs {
  if (_songs is EqualUnmodifiableListView) return _songs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_songs);
}


/// Create a copy of GetNewsSongsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetNewsSongsSuccessCopyWith<GetNewsSongsSuccess> get copyWith => _$GetNewsSongsSuccessCopyWithImpl<GetNewsSongsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNewsSongsSuccess&&const DeepCollectionEquality().equals(other._songs, _songs));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_songs));

@override
String toString() {
  return 'GetNewsSongsState.success(songs: $songs)';
}


}

/// @nodoc
abstract mixin class $GetNewsSongsSuccessCopyWith<$Res> implements $GetNewsSongsStateCopyWith<$Res> {
  factory $GetNewsSongsSuccessCopyWith(GetNewsSongsSuccess value, $Res Function(GetNewsSongsSuccess) _then) = _$GetNewsSongsSuccessCopyWithImpl;
@useResult
$Res call({
 List<SongEntity> songs
});




}
/// @nodoc
class _$GetNewsSongsSuccessCopyWithImpl<$Res>
    implements $GetNewsSongsSuccessCopyWith<$Res> {
  _$GetNewsSongsSuccessCopyWithImpl(this._self, this._then);

  final GetNewsSongsSuccess _self;
  final $Res Function(GetNewsSongsSuccess) _then;

/// Create a copy of GetNewsSongsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? songs = null,}) {
  return _then(GetNewsSongsSuccess(
null == songs ? _self._songs : songs // ignore: cast_nullable_to_non_nullable
as List<SongEntity>,
  ));
}


}

/// @nodoc


class GetNewsSongsFailure implements GetNewsSongsState {
  const GetNewsSongsFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of GetNewsSongsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetNewsSongsFailureCopyWith<GetNewsSongsFailure> get copyWith => _$GetNewsSongsFailureCopyWithImpl<GetNewsSongsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNewsSongsFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'GetNewsSongsState.failure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $GetNewsSongsFailureCopyWith<$Res> implements $GetNewsSongsStateCopyWith<$Res> {
  factory $GetNewsSongsFailureCopyWith(GetNewsSongsFailure value, $Res Function(GetNewsSongsFailure) _then) = _$GetNewsSongsFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$GetNewsSongsFailureCopyWithImpl<$Res>
    implements $GetNewsSongsFailureCopyWith<$Res> {
  _$GetNewsSongsFailureCopyWithImpl(this._self, this._then);

  final GetNewsSongsFailure _self;
  final $Res Function(GetNewsSongsFailure) _then;

/// Create a copy of GetNewsSongsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(GetNewsSongsFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
