// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState {

 LoginStatus get status; String? get errorMessage; LoginRequestResponse? get loginResponse; bool get isPassObscure; AutovalidateMode get autovalidateMode;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.loginResponse, loginResponse) || other.loginResponse == loginResponse)&&(identical(other.isPassObscure, isPassObscure) || other.isPassObscure == isPassObscure)&&(identical(other.autovalidateMode, autovalidateMode) || other.autovalidateMode == autovalidateMode));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,loginResponse,isPassObscure,autovalidateMode);

@override
String toString() {
  return 'LoginState(status: $status, errorMessage: $errorMessage, loginResponse: $loginResponse, isPassObscure: $isPassObscure, autovalidateMode: $autovalidateMode)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 LoginStatus status, String? errorMessage, LoginRequestResponse? loginResponse, bool isPassObscure, AutovalidateMode autovalidateMode
});




}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = freezed,Object? loginResponse = freezed,Object? isPassObscure = null,Object? autovalidateMode = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoginStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,loginResponse: freezed == loginResponse ? _self.loginResponse : loginResponse // ignore: cast_nullable_to_non_nullable
as LoginRequestResponse?,isPassObscure: null == isPassObscure ? _self.isPassObscure : isPassObscure // ignore: cast_nullable_to_non_nullable
as bool,autovalidateMode: null == autovalidateMode ? _self.autovalidateMode : autovalidateMode // ignore: cast_nullable_to_non_nullable
as AutovalidateMode,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginState value)  $default,){
final _that = this;
switch (_that) {
case _LoginState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LoginStatus status,  String? errorMessage,  LoginRequestResponse? loginResponse,  bool isPassObscure,  AutovalidateMode autovalidateMode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.status,_that.errorMessage,_that.loginResponse,_that.isPassObscure,_that.autovalidateMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LoginStatus status,  String? errorMessage,  LoginRequestResponse? loginResponse,  bool isPassObscure,  AutovalidateMode autovalidateMode)  $default,) {final _that = this;
switch (_that) {
case _LoginState():
return $default(_that.status,_that.errorMessage,_that.loginResponse,_that.isPassObscure,_that.autovalidateMode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LoginStatus status,  String? errorMessage,  LoginRequestResponse? loginResponse,  bool isPassObscure,  AutovalidateMode autovalidateMode)?  $default,) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.status,_that.errorMessage,_that.loginResponse,_that.isPassObscure,_that.autovalidateMode);case _:
  return null;

}
}

}

/// @nodoc


class _LoginState implements LoginState {
  const _LoginState({required this.status, this.errorMessage, this.loginResponse, this.isPassObscure = true, this.autovalidateMode = AutovalidateMode.disabled});
  

@override final  LoginStatus status;
@override final  String? errorMessage;
@override final  LoginRequestResponse? loginResponse;
@override@JsonKey() final  bool isPassObscure;
@override@JsonKey() final  AutovalidateMode autovalidateMode;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateCopyWith<_LoginState> get copyWith => __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.loginResponse, loginResponse) || other.loginResponse == loginResponse)&&(identical(other.isPassObscure, isPassObscure) || other.isPassObscure == isPassObscure)&&(identical(other.autovalidateMode, autovalidateMode) || other.autovalidateMode == autovalidateMode));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,loginResponse,isPassObscure,autovalidateMode);

@override
String toString() {
  return 'LoginState(status: $status, errorMessage: $errorMessage, loginResponse: $loginResponse, isPassObscure: $isPassObscure, autovalidateMode: $autovalidateMode)';
}


}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(_LoginState value, $Res Function(_LoginState) _then) = __$LoginStateCopyWithImpl;
@override @useResult
$Res call({
 LoginStatus status, String? errorMessage, LoginRequestResponse? loginResponse, bool isPassObscure, AutovalidateMode autovalidateMode
});




}
/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = freezed,Object? loginResponse = freezed,Object? isPassObscure = null,Object? autovalidateMode = null,}) {
  return _then(_LoginState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoginStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,loginResponse: freezed == loginResponse ? _self.loginResponse : loginResponse // ignore: cast_nullable_to_non_nullable
as LoginRequestResponse?,isPassObscure: null == isPassObscure ? _self.isPassObscure : isPassObscure // ignore: cast_nullable_to_non_nullable
as bool,autovalidateMode: null == autovalidateMode ? _self.autovalidateMode : autovalidateMode // ignore: cast_nullable_to_non_nullable
as AutovalidateMode,
  ));
}


}

// dart format on
