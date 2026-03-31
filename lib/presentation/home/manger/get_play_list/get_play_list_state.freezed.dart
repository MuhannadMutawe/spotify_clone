// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_play_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetPlayListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPlayListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPlayListState()';
}


}

/// @nodoc
class $GetPlayListStateCopyWith<$Res>  {
$GetPlayListStateCopyWith(GetPlayListState _, $Res Function(GetPlayListState) __);
}


/// Adds pattern-matching-related methods to [GetPlayListState].
extension GetPlayListStatePatterns on GetPlayListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( GetPlayListLoading value)?  loading,TResult Function( GetPlayListSuccess value)?  success,TResult Function( GetPlayListFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetPlayListLoading() when loading != null:
return loading(_that);case GetPlayListSuccess() when success != null:
return success(_that);case GetPlayListFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( GetPlayListLoading value)  loading,required TResult Function( GetPlayListSuccess value)  success,required TResult Function( GetPlayListFailure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case GetPlayListLoading():
return loading(_that);case GetPlayListSuccess():
return success(_that);case GetPlayListFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( GetPlayListLoading value)?  loading,TResult? Function( GetPlayListSuccess value)?  success,TResult? Function( GetPlayListFailure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetPlayListLoading() when loading != null:
return loading(_that);case GetPlayListSuccess() when success != null:
return success(_that);case GetPlayListFailure() when failure != null:
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
return initial();case GetPlayListLoading() when loading != null:
return loading();case GetPlayListSuccess() when success != null:
return success(_that.songs);case GetPlayListFailure() when failure != null:
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
return initial();case GetPlayListLoading():
return loading();case GetPlayListSuccess():
return success(_that.songs);case GetPlayListFailure():
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
return initial();case GetPlayListLoading() when loading != null:
return loading();case GetPlayListSuccess() when success != null:
return success(_that.songs);case GetPlayListFailure() when failure != null:
return failure(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements GetPlayListState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPlayListState.initial()';
}


}




/// @nodoc


class GetPlayListLoading implements GetPlayListState {
  const GetPlayListLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPlayListLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPlayListState.loading()';
}


}




/// @nodoc


class GetPlayListSuccess implements GetPlayListState {
  const GetPlayListSuccess(final  List<SongEntity> songs): _songs = songs;
  

 final  List<SongEntity> _songs;
 List<SongEntity> get songs {
  if (_songs is EqualUnmodifiableListView) return _songs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_songs);
}


/// Create a copy of GetPlayListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetPlayListSuccessCopyWith<GetPlayListSuccess> get copyWith => _$GetPlayListSuccessCopyWithImpl<GetPlayListSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPlayListSuccess&&const DeepCollectionEquality().equals(other._songs, _songs));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_songs));

@override
String toString() {
  return 'GetPlayListState.success(songs: $songs)';
}


}

/// @nodoc
abstract mixin class $GetPlayListSuccessCopyWith<$Res> implements $GetPlayListStateCopyWith<$Res> {
  factory $GetPlayListSuccessCopyWith(GetPlayListSuccess value, $Res Function(GetPlayListSuccess) _then) = _$GetPlayListSuccessCopyWithImpl;
@useResult
$Res call({
 List<SongEntity> songs
});




}
/// @nodoc
class _$GetPlayListSuccessCopyWithImpl<$Res>
    implements $GetPlayListSuccessCopyWith<$Res> {
  _$GetPlayListSuccessCopyWithImpl(this._self, this._then);

  final GetPlayListSuccess _self;
  final $Res Function(GetPlayListSuccess) _then;

/// Create a copy of GetPlayListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? songs = null,}) {
  return _then(GetPlayListSuccess(
null == songs ? _self._songs : songs // ignore: cast_nullable_to_non_nullable
as List<SongEntity>,
  ));
}


}

/// @nodoc


class GetPlayListFailure implements GetPlayListState {
  const GetPlayListFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of GetPlayListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetPlayListFailureCopyWith<GetPlayListFailure> get copyWith => _$GetPlayListFailureCopyWithImpl<GetPlayListFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPlayListFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'GetPlayListState.failure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $GetPlayListFailureCopyWith<$Res> implements $GetPlayListStateCopyWith<$Res> {
  factory $GetPlayListFailureCopyWith(GetPlayListFailure value, $Res Function(GetPlayListFailure) _then) = _$GetPlayListFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$GetPlayListFailureCopyWithImpl<$Res>
    implements $GetPlayListFailureCopyWith<$Res> {
  _$GetPlayListFailureCopyWithImpl(this._self, this._then);

  final GetPlayListFailure _self;
  final $Res Function(GetPlayListFailure) _then;

/// Create a copy of GetPlayListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(GetPlayListFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
