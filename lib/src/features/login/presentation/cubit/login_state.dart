import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/login_request_response.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loginLoading() = LoginLoading<T>;
  const factory LoginState.loginSuccess(LoginRequestResponse data) =
      LoginSuccess<T>;
  const factory LoginState.loginError(String message) = LoginError<T>;
}
