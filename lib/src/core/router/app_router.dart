import 'package:flutter/material.dart';
import 'package:visits_system/src/core/helpers/extensions.dart';

import '../../features/login/views/login_view.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const LoginView());
      default:
        return _unFoundRoute();
    }
  }

  static Route<dynamic> _unFoundRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        body: Center(
          child: Text(
            'لا يمكن الوصول لهذه الصفحة',
            style: context.shadTextTheme.h3,
          ),
        ),
      ),
    );
  }
}
