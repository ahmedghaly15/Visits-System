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
mixin _$HomeState {

 HomeStatus get status; String? get error; FetchVisitsResponse? get fetchAllVisitsResponse; dynamic get enterAnotherCardNum;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error)&&(identical(other.fetchAllVisitsResponse, fetchAllVisitsResponse) || other.fetchAllVisitsResponse == fetchAllVisitsResponse)&&const DeepCollectionEquality().equals(other.enterAnotherCardNum, enterAnotherCardNum));
}


@override
int get hashCode => Object.hash(runtimeType,status,error,fetchAllVisitsResponse,const DeepCollectionEquality().hash(enterAnotherCardNum));

@override
String toString() {
  return 'HomeState(status: $status, error: $error, fetchAllVisitsResponse: $fetchAllVisitsResponse, enterAnotherCardNum: $enterAnotherCardNum)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 HomeStatus status, String? error, FetchVisitsResponse? fetchAllVisitsResponse, dynamic enterAnotherCardNum
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? error = freezed,Object? fetchAllVisitsResponse = freezed,Object? enterAnotherCardNum = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HomeStatus,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,fetchAllVisitsResponse: freezed == fetchAllVisitsResponse ? _self.fetchAllVisitsResponse : fetchAllVisitsResponse // ignore: cast_nullable_to_non_nullable
as FetchVisitsResponse?,enterAnotherCardNum: freezed == enterAnotherCardNum ? _self.enterAnotherCardNum : enterAnotherCardNum // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HomeStatus status,  String? error,  FetchVisitsResponse? fetchAllVisitsResponse,  dynamic enterAnotherCardNum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.status,_that.error,_that.fetchAllVisitsResponse,_that.enterAnotherCardNum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HomeStatus status,  String? error,  FetchVisitsResponse? fetchAllVisitsResponse,  dynamic enterAnotherCardNum)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.status,_that.error,_that.fetchAllVisitsResponse,_that.enterAnotherCardNum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HomeStatus status,  String? error,  FetchVisitsResponse? fetchAllVisitsResponse,  dynamic enterAnotherCardNum)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.status,_that.error,_that.fetchAllVisitsResponse,_that.enterAnotherCardNum);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({required this.status, this.error, this.fetchAllVisitsResponse, this.enterAnotherCardNum = false});
  

@override final  HomeStatus status;
@override final  String? error;
@override final  FetchVisitsResponse? fetchAllVisitsResponse;
@override@JsonKey() final  dynamic enterAnotherCardNum;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error)&&(identical(other.fetchAllVisitsResponse, fetchAllVisitsResponse) || other.fetchAllVisitsResponse == fetchAllVisitsResponse)&&const DeepCollectionEquality().equals(other.enterAnotherCardNum, enterAnotherCardNum));
}


@override
int get hashCode => Object.hash(runtimeType,status,error,fetchAllVisitsResponse,const DeepCollectionEquality().hash(enterAnotherCardNum));

@override
String toString() {
  return 'HomeState(status: $status, error: $error, fetchAllVisitsResponse: $fetchAllVisitsResponse, enterAnotherCardNum: $enterAnotherCardNum)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 HomeStatus status, String? error, FetchVisitsResponse? fetchAllVisitsResponse, dynamic enterAnotherCardNum
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? error = freezed,Object? fetchAllVisitsResponse = freezed,Object? enterAnotherCardNum = freezed,}) {
  return _then(_HomeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HomeStatus,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,fetchAllVisitsResponse: freezed == fetchAllVisitsResponse ? _self.fetchAllVisitsResponse : fetchAllVisitsResponse // ignore: cast_nullable_to_non_nullable
as FetchVisitsResponse?,enterAnotherCardNum: freezed == enterAnotherCardNum ? _self.enterAnotherCardNum : enterAnotherCardNum // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
