import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:visits_system/src/core/helpers/extensions.dart';

import '../utils/app_strings.dart';
import '../utils/assets.dart';

class FlutterErrorDetailsView extends StatelessWidget {
  const FlutterErrorDetailsView({super.key, required this.details});

  final FlutterErrorDetails details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          spacing: 16.h,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Lottie.asset(
                Assets.lottieShyLottie,
                fit: BoxFit.cover,
                repeat: false,
              ),
            ),
            Text(
              AppStrings.defaultError,
              style: context.shadTextTheme.h4,
              textAlign: TextAlign.center,
            ),
            Text(
              AppStrings.defaultError,
              style: context.shadTextTheme.p,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
