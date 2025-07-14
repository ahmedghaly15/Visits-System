import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show ShadForm;

import '../../cubit/login_cubit.dart';
import 'pass_field_bloc_builder.dart';
import 'username_field_bloc_selector.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadForm(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        spacing: 16.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [UsernameFieldBlocSelector(), PassFieldBlocBuilder()],
      ),
    );
  }
}
