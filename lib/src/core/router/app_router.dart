import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visits_system/src/core/helpers/extensions.dart';

import '../../../di.dart';
import '../../features/login/presentation/cubit/login_cubit.dart';
import '../../features/login/presentation/views/login_view.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<LoginCubit>(
            create: (_) => getIt.get<LoginCubit>(),
            child: const LoginView(),
          ),
        );
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
