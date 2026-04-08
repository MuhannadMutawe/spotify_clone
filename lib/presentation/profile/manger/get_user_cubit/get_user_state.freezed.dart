// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetUserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetUserState()';
}


}

/// @nodoc
class $GetUserStateCopyWith<$Res>  {
$GetUserStateCopyWith(GetUserState _, $Res Function(GetUserState) __);
}


/// Adds pattern-matching-related methods to [GetUserState].
extension GetUserStatePatterns on GetUserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( GetUserLoading value)?  loading,TResult Function( GetUserSuccess value)?  success,TResult Function( GetUserFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetUserLoading() when loading != null:
return loading(_that);case GetUserSuccess() when success != null:
return success(_that);case GetUserFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( GetUserLoading value)  loading,required TResult Function( GetUserSuccess value)  success,required TResult Function( GetUserFailure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case GetUserLoading():
return loading(_that);case GetUserSuccess():
return success(_that);case GetUserFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( GetUserLoading value)?  loading,TResult? Function( GetUserSuccess value)?  success,TResult? Function( GetUserFailure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetUserLoading() when loading != null:
return loading(_that);case GetUserSuccess() when success != null:
return success(_that);case GetUserFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UserEntity user)?  success,TResult Function( String errorMessage)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetUserLoading() when loading != null:
return loading();case GetUserSuccess() when success != null:
return success(_that.user);case GetUserFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UserEntity user)  success,required TResult Function( String errorMessage)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case GetUserLoading():
return loading();case GetUserSuccess():
return success(_that.user);case GetUserFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UserEntity user)?  success,TResult? Function( String errorMessage)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetUserLoading() when loading != null:
return loading();case GetUserSuccess() when success != null:
return success(_that.user);case GetUserFailure() when failure != null:
return failure(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements GetUserState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetUserState.initial()';
}


}




/// @nodoc


class GetUserLoading implements GetUserState {
  const GetUserLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetUserState.loading()';
}


}




/// @nodoc


class GetUserSuccess implements GetUserState {
  const GetUserSuccess(this.user);
  

 final  UserEntity user;

/// Create a copy of GetUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUserSuccessCopyWith<GetUserSuccess> get copyWith => _$GetUserSuccessCopyWithImpl<GetUserSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserSuccess&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'GetUserState.success(user: $user)';
}


}

/// @nodoc
abstract mixin class $GetUserSuccessCopyWith<$Res> implements $GetUserStateCopyWith<$Res> {
  factory $GetUserSuccessCopyWith(GetUserSuccess value, $Res Function(GetUserSuccess) _then) = _$GetUserSuccessCopyWithImpl;
@useResult
$Res call({
 UserEntity user
});




}
/// @nodoc
class _$GetUserSuccessCopyWithImpl<$Res>
    implements $GetUserSuccessCopyWith<$Res> {
  _$GetUserSuccessCopyWithImpl(this._self, this._then);

  final GetUserSuccess _self;
  final $Res Function(GetUserSuccess) _then;

/// Create a copy of GetUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(GetUserSuccess(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}


}

/// @nodoc


class GetUserFailure implements GetUserState {
  const GetUserFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of GetUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUserFailureCopyWith<GetUserFailure> get copyWith => _$GetUserFailureCopyWithImpl<GetUserFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'GetUserState.failure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $GetUserFailureCopyWith<$Res> implements $GetUserStateCopyWith<$Res> {
  factory $GetUserFailureCopyWith(GetUserFailure value, $Res Function(GetUserFailure) _then) = _$GetUserFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$GetUserFailureCopyWithImpl<$Res>
    implements $GetUserFailureCopyWith<$Res> {
  _$GetUserFailureCopyWithImpl(this._self, this._then);

  final GetUserFailure _self;
  final $Res Function(GetUserFailure) _then;

/// Create a copy of GetUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(GetUserFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
