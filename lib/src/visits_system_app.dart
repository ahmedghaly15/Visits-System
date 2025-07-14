import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import 'core/router/app_router.dart';
import 'core/utils/const_strings.dart';

class VisitsSystemApp extends StatelessWidget {
  const VisitsSystemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) => ShadApp.custom(
        themeMode: ThemeMode.dark,
        appBuilder: (_) => MaterialApp(
          title: ConstStrings.appTitle,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter.onGenerateRoute,
          builder: (_, child) => ShadAppBuilder(child: child),
        ),
      ),
    );
  }
}
