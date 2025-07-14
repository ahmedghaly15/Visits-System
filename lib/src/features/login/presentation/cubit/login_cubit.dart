import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visits_system/src/core/api/api_request_result.dart';

import '../../data/models/login_request_body.dart';
import '../../data/repo/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _repo;

  LoginCubit(this._repo) : super(LoginState.initial());

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  void login() async {
    emit(state.copyWith(status: LoginStatus.loginLoading));
    final requestBody = LoginRequestBody(
      username: usernameController.text.trim(),
      password: passController.text,
    );
    final result = await _repo.login(requestBody);
    result.when(
      success: (data) => emit(
        state.copyWith(status: LoginStatus.loginSuccess, loginResponse: data),
      ),
      failure: (failure) => emit(
        state.copyWith(
          status: LoginStatus.loginFailure,
          errorMessage: failure.message,
        ),
      ),
    );
  }

  void togglePassVisibility() => emit(
    state.copyWith(
      status: LoginStatus.togglePassVisibility,
      isPassObscure: !state.isPassObscure,
    ),
  );

  @override
  Future<void> close() {
    usernameController.dispose();
    passController.dispose();
    return super.close();
  }
}
