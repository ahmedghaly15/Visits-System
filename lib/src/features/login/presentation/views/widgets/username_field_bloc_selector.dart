import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/input_validator.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/custom_data_input.dart';
import '../../cubit/login_cubit.dart';
import '../../cubit/login_state.dart';

class UsernameFieldBlocSelector extends StatelessWidget {
  const UsernameFieldBlocSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<LoginCubit, LoginState, AutovalidateMode>(
      selector: (state) => state.autovalidateMode,
      builder: (context, autovalidateMode) => CustomDataInput(
        autovalidateMode: autovalidateMode,
        controller: context.read<LoginCubit>().usernameController,
        autofillHints: const [AutofillHints.username],
        labelText: AppStrings.username,
        validator: (value) => InputValidator.validateUsernameField(value),
        placeholderText: AppStrings.enterUsername,
      ),
    );
  }
}
