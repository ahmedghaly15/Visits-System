import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show ShadCard;

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import 'login_button_bloc_consumer.dart';
import 'login_form.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadCard(
      border: Border.all(color: ColorManager.color595d66, width: 2.w),
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
      columnMainAxisSize: MainAxisSize.min,
      radius: BorderRadius.circular(16.r),
      trailing: const LoginButtonBlocConsumer(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 16.h,
        children: [
          Image.asset(Assets.imagesFoeLogoWhiteCcazrDol, fit: BoxFit.cover),
          const LoginForm(),
        ],
      ),
    );
  }
}
