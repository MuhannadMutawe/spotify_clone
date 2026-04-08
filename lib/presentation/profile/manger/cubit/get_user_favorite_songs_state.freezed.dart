// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_favorite_songs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetUserFavoriteSongsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserFavoriteSongsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetUserFavoriteSongsState()';
}


}

/// @nodoc
class $GetUserFavoriteSongsStateCopyWith<$Res>  {
$GetUserFavoriteSongsStateCopyWith(GetUserFavoriteSongsState _, $Res Function(GetUserFavoriteSongsState) __);
}


/// Adds pattern-matching-related methods to [GetUserFavoriteSongsState].
extension GetUserFavoriteSongsStatePatterns on GetUserFavoriteSongsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( GetUserFavoriteSongsLoading value)?  loading,TResult Function( GetUserFavoriteSongsSuccess value)?  success,TResult Function( GetUserFavoriteSongsFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetUserFavoriteSongsLoading() when loading != null:
return loading(_that);case GetUserFavoriteSongsSuccess() when success != null:
return success(_that);case GetUserFavoriteSongsFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( GetUserFavoriteSongsLoading value)  loading,required TResult Function( GetUserFavoriteSongsSuccess value)  success,required TResult Function( GetUserFavoriteSongsFailure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case GetUserFavoriteSongsLoading():
return loading(_that);case GetUserFavoriteSongsSuccess():
return success(_that);case GetUserFavoriteSongsFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( GetUserFavoriteSongsLoading value)?  loading,TResult? Function( GetUserFavoriteSongsSuccess value)?  success,TResult? Function( GetUserFavoriteSongsFailure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetUserFavoriteSongsLoading() when loading != null:
return loading(_that);case GetUserFavoriteSongsSuccess() when success != null:
return success(_that);case GetUserFavoriteSongsFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<SongEntity> songs)?  success,TResult Function( String messageError)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetUserFavoriteSongsLoading() when loading != null:
return loading();case GetUserFavoriteSongsSuccess() when success != null:
return success(_that.songs);case GetUserFavoriteSongsFailure() when failure != null:
return failure(_that.messageError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<SongEntity> songs)  success,required TResult Function( String messageError)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case GetUserFavoriteSongsLoading():
return loading();case GetUserFavoriteSongsSuccess():
return success(_that.songs);case GetUserFavoriteSongsFailure():
return failure(_that.messageError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<SongEntity> songs)?  success,TResult? Function( String messageError)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetUserFavoriteSongsLoading() when loading != null:
return loading();case GetUserFavoriteSongsSuccess() when success != null:
return success(_that.songs);case GetUserFavoriteSongsFailure() when failure != null:
return failure(_that.messageError);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements GetUserFavoriteSongsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetUserFavoriteSongsState.initial()';
}


}




/// @nodoc


class GetUserFavoriteSongsLoading implements GetUserFavoriteSongsState {
  const GetUserFavoriteSongsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserFavoriteSongsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetUserFavoriteSongsState.loading()';
}


}




/// @nodoc


class GetUserFavoriteSongsSuccess implements GetUserFavoriteSongsState {
  const GetUserFavoriteSongsSuccess(final  List<SongEntity> songs): _songs = songs;
  

 final  List<SongEntity> _songs;
 List<SongEntity> get songs {
  if (_songs is EqualUnmodifiableListView) return _songs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_songs);
}


/// Create a copy of GetUserFavoriteSongsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUserFavoriteSongsSuccessCopyWith<GetUserFavoriteSongsSuccess> get copyWith => _$GetUserFavoriteSongsSuccessCopyWithImpl<GetUserFavoriteSongsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserFavoriteSongsSuccess&&const DeepCollectionEquality().equals(other._songs, _songs));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_songs));

@override
String toString() {
  return 'GetUserFavoriteSongsState.success(songs: $songs)';
}


}

/// @nodoc
abstract mixin class $GetUserFavoriteSongsSuccessCopyWith<$Res> implements $GetUserFavoriteSongsStateCopyWith<$Res> {
  factory $GetUserFavoriteSongsSuccessCopyWith(GetUserFavoriteSongsSuccess value, $Res Function(GetUserFavoriteSongsSuccess) _then) = _$GetUserFavoriteSongsSuccessCopyWithImpl;
@useResult
$Res call({
 List<SongEntity> songs
});




}
/// @nodoc
class _$GetUserFavoriteSongsSuccessCopyWithImpl<$Res>
    implements $GetUserFavoriteSongsSuccessCopyWith<$Res> {
  _$GetUserFavoriteSongsSuccessCopyWithImpl(this._self, this._then);

  final GetUserFavoriteSongsSuccess _self;
  final $Res Function(GetUserFavoriteSongsSuccess) _then;

/// Create a copy of GetUserFavoriteSongsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? songs = null,}) {
  return _then(GetUserFavoriteSongsSuccess(
null == songs ? _self._songs : songs // ignore: cast_nullable_to_non_nullable
as List<SongEntity>,
  ));
}


}

/// @nodoc


class GetUserFavoriteSongsFailure implements GetUserFavoriteSongsState {
  const GetUserFavoriteSongsFailure(this.messageError);
  

 final  String messageError;

/// Create a copy of GetUserFavoriteSongsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUserFavoriteSongsFailureCopyWith<GetUserFavoriteSongsFailure> get copyWith => _$GetUserFavoriteSongsFailureCopyWithImpl<GetUserFavoriteSongsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserFavoriteSongsFailure&&(identical(other.messageError, messageError) || other.messageError == messageError));
}


@override
int get hashCode => Object.hash(runtimeType,messageError);

@override
String toString() {
  return 'GetUserFavoriteSongsState.failure(messageError: $messageError)';
}


}

/// @nodoc
abstract mixin class $GetUserFavoriteSongsFailureCopyWith<$Res> implements $GetUserFavoriteSongsStateCopyWith<$Res> {
  factory $GetUserFavoriteSongsFailureCopyWith(GetUserFavoriteSongsFailure value, $Res Function(GetUserFavoriteSongsFailure) _then) = _$GetUserFavoriteSongsFailureCopyWithImpl;
@useResult
$Res call({
 String messageError
});




}
/// @nodoc
class _$GetUserFavoriteSongsFailureCopyWithImpl<$Res>
    implements $GetUserFavoriteSongsFailureCopyWith<$Res> {
  _$GetUserFavoriteSongsFailureCopyWithImpl(this._self, this._then);

  final GetUserFavoriteSongsFailure _self;
  final $Res Function(GetUserFavoriteSongsFailure) _then;

/// Create a copy of GetUserFavoriteSongsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messageError = null,}) {
  return _then(GetUserFavoriteSongsFailure(
null == messageError ? _self.messageError : messageError // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
