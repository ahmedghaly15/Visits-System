import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/input_validator.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/custom_data_input.dart';
import '../../cubit/login_cubit.dart';
import '../../cubit/login_state.dart';

class PassFieldBlocBuilder extends StatelessWidget {
  const PassFieldBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) => CustomDataInput(
        autovalidateMode: state.autovalidateMode,
        controller: context.read<LoginCubit>().passController,
        autofillHints: const [AutofillHints.password],
        labelText: AppStrings.password,
        validator: (value) => InputValidator.validatePasswordField(value),
        placeholderText: AppStrings.enterPass,
        obscureText: state.isPassObscure,
        leading: IconButton(
          icon: Icon(
            state.isPassObscure ? Icons.visibility : Icons.visibility_off,
            color: Colors.white,
          ),
          onPressed: () => context.read<LoginCubit>().togglePassVisibility(),
        ),
      ),
    );
  }

  bool _buildWhen(LoginStatus status) =>
      status == LoginStatus.togglePassVisibility ||
      status == LoginStatus.enableAutovalidateMode;
}
