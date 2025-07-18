import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visits_system/src/core/helpers/extensions.dart';

import '../../../../../core/api/dio_client.dart';
import '../../../../../core/helpers/cache_keys.dart';
import '../../../../../core/helpers/secure_storage_helper.dart';
import '../../../../../core/locale/locale_keys.dart';
import '../../../../../core/router/routes.dart';
import '../../../../../core/utils/functions/check_if_user_is_logged_in.dart';
import '../../../../../core/widgets/adaptive_circular_progress_indicator.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../../cubit/login_cubit.dart';
import '../../cubit/login_state.dart';

class LoginButtonBlocConsumer extends StatelessWidget {
  const LoginButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listenWhen: (_, current) => _listenOrBuildWhen(current.status),
      listener: (context, state) => _listener(state, context),
      buildWhen: (_, current) => _listenOrBuildWhen(current.status),
      builder: (context, state) => PrimaryButton(
        onPressed: () => context.read<LoginCubit>().validateAndLogin(),
        text: LocaleKeys.login,
        child: state.status == LoginStatus.loginLoading
            ? const AdaptiveCircularProgressIndicator()
            : null,
      ),
    );
  }

  void _listener(LoginState state, BuildContext context) async {
    switch (state.status) {
      case LoginStatus.loginLoading:
        context.unfocusKeyboard();
      case LoginStatus.loginSuccess:
        await _onSuccess(state, context);
      case LoginStatus.loginFailure:
        context.showToast(state.errorMessage!);
      default:
        context.unfocusKeyboard();
    }
  }

  Future<void> _onSuccess(LoginState state, BuildContext context) async {
    final newAccessToken = state.loginResponse!.tokens.first.accessToken;
    DioClient.setTokenIntoHeaders(newAccessToken);
    accessToken = newAccessToken;
    await SecureStorageHelper.setSecuredString(
      CacheKeys.accessToken,
      newAccessToken,
    );
    context.pushReplacementNamed(Routes.home);
  }

  bool _listenOrBuildWhen(LoginStatus status) =>
      status == LoginStatus.loginLoading ||
      status == LoginStatus.loginSuccess ||
      status == LoginStatus.loginFailure;
}
