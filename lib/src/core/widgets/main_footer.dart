import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:visits_system/src/core/helpers/extensions.dart';

import '../locale/locale_keys.dart';

class MainFooter extends StatelessWidget {
  const MainFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FittedBox(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 36, 46, 68),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Text(
            context.translate(LocaleKeys.footer),
            style: context.shadTextTheme.p,
          ),
        ),
      ),
    );
  }
}
