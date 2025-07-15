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

 HomeStatus get status; String? get error; FetchVisitsResponse? get fetchAllVisitsResponse;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<T, HomeState<T>> get copyWith => _$HomeStateCopyWithImpl<T, HomeState<T>>(this as HomeState<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState<T>&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error)&&(identical(other.fetchAllVisitsResponse, fetchAllVisitsResponse) || other.fetchAllVisitsResponse == fetchAllVisitsResponse));
}


@override
int get hashCode => Object.hash(runtimeType,status,error,fetchAllVisitsResponse);

@override
String toString() {
  return 'HomeState<$T>(status: $status, error: $error, fetchAllVisitsResponse: $fetchAllVisitsResponse)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<T,$Res>  {
  factory $HomeStateCopyWith(HomeState<T> value, $Res Function(HomeState<T>) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 HomeStatus status, String? error, FetchVisitsResponse? fetchAllVisitsResponse
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<T,$Res>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState<T> _self;
  final $Res Function(HomeState<T>) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? error = freezed,Object? fetchAllVisitsResponse = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HomeStatus,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,fetchAllVisitsResponse: freezed == fetchAllVisitsResponse ? _self.fetchAllVisitsResponse : fetchAllVisitsResponse // ignore: cast_nullable_to_non_nullable
as FetchVisitsResponse?,
  ));
}

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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState<T> value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState<T> value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HomeStatus status,  String? error,  FetchVisitsResponse? fetchAllVisitsResponse)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.status,_that.error,_that.fetchAllVisitsResponse);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HomeStatus status,  String? error,  FetchVisitsResponse? fetchAllVisitsResponse)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.status,_that.error,_that.fetchAllVisitsResponse);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HomeStatus status,  String? error,  FetchVisitsResponse? fetchAllVisitsResponse)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.status,_that.error,_that.fetchAllVisitsResponse);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState<T> implements HomeState<T> {
  const _HomeState({required this.status, this.error, this.fetchAllVisitsResponse});
  

@override final  HomeStatus status;
@override final  String? error;
@override final  FetchVisitsResponse? fetchAllVisitsResponse;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<T, _HomeState<T>> get copyWith => __$HomeStateCopyWithImpl<T, _HomeState<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState<T>&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error)&&(identical(other.fetchAllVisitsResponse, fetchAllVisitsResponse) || other.fetchAllVisitsResponse == fetchAllVisitsResponse));
}


@override
int get hashCode => Object.hash(runtimeType,status,error,fetchAllVisitsResponse);

@override
String toString() {
  return 'HomeState<$T>(status: $status, error: $error, fetchAllVisitsResponse: $fetchAllVisitsResponse)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<T,$Res> implements $HomeStateCopyWith<T, $Res> {
  factory _$HomeStateCopyWith(_HomeState<T> value, $Res Function(_HomeState<T>) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 HomeStatus status, String? error, FetchVisitsResponse? fetchAllVisitsResponse
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<T,$Res>
    implements _$HomeStateCopyWith<T, $Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState<T> _self;
  final $Res Function(_HomeState<T>) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? error = freezed,Object? fetchAllVisitsResponse = freezed,}) {
  return _then(_HomeState<T>(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HomeStatus,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,fetchAllVisitsResponse: freezed == fetchAllVisitsResponse ? _self.fetchAllVisitsResponse : fetchAllVisitsResponse // ignore: cast_nullable_to_non_nullable
as FetchVisitsResponse?,
  ));
}


}

// dart format on
