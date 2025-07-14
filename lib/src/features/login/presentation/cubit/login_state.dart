import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/login_request_response.dart';

part 'login_state.freezed.dart';

enum LoginStatus {
  initial,
  loginLoading,
  loginSuccess,
  loginFailure,
  togglePassVisibility,
}

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    required LoginStatus status,
    String? errorMessage,
    LoginRequestResponse? loginResponse,
    @Default(true) bool isPassObscure,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(status: LoginStatus.initial);
}
