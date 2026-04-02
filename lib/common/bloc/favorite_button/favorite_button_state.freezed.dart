// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_button_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoriteButtonState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteButtonState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteButtonState()';
}


}

/// @nodoc
class $FavoriteButtonStateCopyWith<$Res>  {
$FavoriteButtonStateCopyWith(FavoriteButtonState _, $Res Function(FavoriteButtonState) __);
}


/// Adds pattern-matching-related methods to [FavoriteButtonState].
extension FavoriteButtonStatePatterns on FavoriteButtonState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( FavoriteButtonUpdated value)?  updated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case FavoriteButtonUpdated() when updated != null:
return updated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( FavoriteButtonUpdated value)  updated,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case FavoriteButtonUpdated():
return updated(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( FavoriteButtonUpdated value)?  updated,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case FavoriteButtonUpdated() when updated != null:
return updated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( bool isFavorite)?  updated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case FavoriteButtonUpdated() when updated != null:
return updated(_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( bool isFavorite)  updated,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case FavoriteButtonUpdated():
return updated(_that.isFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( bool isFavorite)?  updated,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case FavoriteButtonUpdated() when updated != null:
return updated(_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements FavoriteButtonState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteButtonState.initial()';
}


}




/// @nodoc


class FavoriteButtonUpdated implements FavoriteButtonState {
  const FavoriteButtonUpdated(this.isFavorite);
  

 final  bool isFavorite;

/// Create a copy of FavoriteButtonState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteButtonUpdatedCopyWith<FavoriteButtonUpdated> get copyWith => _$FavoriteButtonUpdatedCopyWithImpl<FavoriteButtonUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteButtonUpdated&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,isFavorite);

@override
String toString() {
  return 'FavoriteButtonState.updated(isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $FavoriteButtonUpdatedCopyWith<$Res> implements $FavoriteButtonStateCopyWith<$Res> {
  factory $FavoriteButtonUpdatedCopyWith(FavoriteButtonUpdated value, $Res Function(FavoriteButtonUpdated) _then) = _$FavoriteButtonUpdatedCopyWithImpl;
@useResult
$Res call({
 bool isFavorite
});




}
/// @nodoc
class _$FavoriteButtonUpdatedCopyWithImpl<$Res>
    implements $FavoriteButtonUpdatedCopyWith<$Res> {
  _$FavoriteButtonUpdatedCopyWithImpl(this._self, this._then);

  final FavoriteButtonUpdated _self;
  final $Res Function(FavoriteButtonUpdated) _then;

/// Create a copy of FavoriteButtonState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isFavorite = null,}) {
  return _then(FavoriteButtonUpdated(
null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
