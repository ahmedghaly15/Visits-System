// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>()';
}


}

/// @nodoc
class $HomeStateCopyWith<T,$Res>  {
$HomeStateCopyWith(HomeState<T> _, $Res Function(HomeState<T>) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns<T> on HomeState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( FetchAllVisitsLoading<T> value)?  fetchAllVisitsLoading,TResult Function( FetchAllVisitsSuccess<T> value)?  fetchAllVisitsSuccess,TResult Function( FetchAllVisitsFailure<T> value)?  fetchAllVisitsFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case FetchAllVisitsLoading() when fetchAllVisitsLoading != null:
return fetchAllVisitsLoading(_that);case FetchAllVisitsSuccess() when fetchAllVisitsSuccess != null:
return fetchAllVisitsSuccess(_that);case FetchAllVisitsFailure() when fetchAllVisitsFailure != null:
return fetchAllVisitsFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( FetchAllVisitsLoading<T> value)  fetchAllVisitsLoading,required TResult Function( FetchAllVisitsSuccess<T> value)  fetchAllVisitsSuccess,required TResult Function( FetchAllVisitsFailure<T> value)  fetchAllVisitsFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case FetchAllVisitsLoading():
return fetchAllVisitsLoading(_that);case FetchAllVisitsSuccess():
return fetchAllVisitsSuccess(_that);case FetchAllVisitsFailure():
return fetchAllVisitsFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( FetchAllVisitsLoading<T> value)?  fetchAllVisitsLoading,TResult? Function( FetchAllVisitsSuccess<T> value)?  fetchAllVisitsSuccess,TResult? Function( FetchAllVisitsFailure<T> value)?  fetchAllVisitsFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case FetchAllVisitsLoading() when fetchAllVisitsLoading != null:
return fetchAllVisitsLoading(_that);case FetchAllVisitsSuccess() when fetchAllVisitsSuccess != null:
return fetchAllVisitsSuccess(_that);case FetchAllVisitsFailure() when fetchAllVisitsFailure != null:
return fetchAllVisitsFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  fetchAllVisitsLoading,TResult Function( FetchVisitsResponse data)?  fetchAllVisitsSuccess,TResult Function( String message)?  fetchAllVisitsFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case FetchAllVisitsLoading() when fetchAllVisitsLoading != null:
return fetchAllVisitsLoading();case FetchAllVisitsSuccess() when fetchAllVisitsSuccess != null:
return fetchAllVisitsSuccess(_that.data);case FetchAllVisitsFailure() when fetchAllVisitsFailure != null:
return fetchAllVisitsFailure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  fetchAllVisitsLoading,required TResult Function( FetchVisitsResponse data)  fetchAllVisitsSuccess,required TResult Function( String message)  fetchAllVisitsFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case FetchAllVisitsLoading():
return fetchAllVisitsLoading();case FetchAllVisitsSuccess():
return fetchAllVisitsSuccess(_that.data);case FetchAllVisitsFailure():
return fetchAllVisitsFailure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  fetchAllVisitsLoading,TResult? Function( FetchVisitsResponse data)?  fetchAllVisitsSuccess,TResult? Function( String message)?  fetchAllVisitsFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case FetchAllVisitsLoading() when fetchAllVisitsLoading != null:
return fetchAllVisitsLoading();case FetchAllVisitsSuccess() when fetchAllVisitsSuccess != null:
return fetchAllVisitsSuccess(_that.data);case FetchAllVisitsFailure() when fetchAllVisitsFailure != null:
return fetchAllVisitsFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements HomeState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>.initial()';
}


}




/// @nodoc


class FetchAllVisitsLoading<T> implements HomeState<T> {
  const FetchAllVisitsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchAllVisitsLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>.fetchAllVisitsLoading()';
}


}




/// @nodoc


class FetchAllVisitsSuccess<T> implements HomeState<T> {
  const FetchAllVisitsSuccess(this.data);
  

 final  FetchVisitsResponse data;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchAllVisitsSuccessCopyWith<T, FetchAllVisitsSuccess<T>> get copyWith => _$FetchAllVisitsSuccessCopyWithImpl<T, FetchAllVisitsSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchAllVisitsSuccess<T>&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'HomeState<$T>.fetchAllVisitsSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $FetchAllVisitsSuccessCopyWith<T,$Res> implements $HomeStateCopyWith<T, $Res> {
  factory $FetchAllVisitsSuccessCopyWith(FetchAllVisitsSuccess<T> value, $Res Function(FetchAllVisitsSuccess<T>) _then) = _$FetchAllVisitsSuccessCopyWithImpl;
@useResult
$Res call({
 FetchVisitsResponse data
});




}
/// @nodoc
class _$FetchAllVisitsSuccessCopyWithImpl<T,$Res>
    implements $FetchAllVisitsSuccessCopyWith<T, $Res> {
  _$FetchAllVisitsSuccessCopyWithImpl(this._self, this._then);

  final FetchAllVisitsSuccess<T> _self;
  final $Res Function(FetchAllVisitsSuccess<T>) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(FetchAllVisitsSuccess<T>(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FetchVisitsResponse,
  ));
}


}

/// @nodoc


class FetchAllVisitsFailure<T> implements HomeState<T> {
  const FetchAllVisitsFailure(this.message);
  

 final  String message;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchAllVisitsFailureCopyWith<T, FetchAllVisitsFailure<T>> get copyWith => _$FetchAllVisitsFailureCopyWithImpl<T, FetchAllVisitsFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchAllVisitsFailure<T>&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HomeState<$T>.fetchAllVisitsFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FetchAllVisitsFailureCopyWith<T,$Res> implements $HomeStateCopyWith<T, $Res> {
  factory $FetchAllVisitsFailureCopyWith(FetchAllVisitsFailure<T> value, $Res Function(FetchAllVisitsFailure<T>) _then) = _$FetchAllVisitsFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FetchAllVisitsFailureCopyWithImpl<T,$Res>
    implements $FetchAllVisitsFailureCopyWith<T, $Res> {
  _$FetchAllVisitsFailureCopyWithImpl(this._self, this._then);

  final FetchAllVisitsFailure<T> _self;
  final $Res Function(FetchAllVisitsFailure<T>) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(FetchAllVisitsFailure<T>(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
