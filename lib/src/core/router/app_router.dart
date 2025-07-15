import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visits_system/src/core/helpers/extensions.dart';

import '../../../di.dart';
import '../../features/card_visitors/presentation/views/card_visitors_view.dart';
import '../../features/home/data/models/fetch_visits_response.dart';
import '../../features/home/presentation/cubit/home_cubit.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/login/presentation/cubit/login_cubit.dart';
import '../../features/login/presentation/views/login_view.dart';
import '../utils/functions/check_if_user_is_logged_in.dart';
import 'routes.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return isUserLoggedIn ? _homeRoute() : _loginRoute();
      case Routes.login:
        return _loginRoute();
      case Routes.home:
        return _homeRoute();
      case Routes.cardVisitors:
        final args = settings.arguments as List<Visitor>;
        return MaterialPageRoute(
          builder: (_) => CardVisitorsView(visitors: args),
        );
      default:
        return _unFoundRoute();
    }
  }

  static MaterialPageRoute<dynamic> _homeRoute() {
    return MaterialPageRoute(
      builder: (_) => BlocProvider<HomeCubit>(
        create: (_) => getIt.get<HomeCubit>(),
        child: const HomeView(),
      ),
    );
  }

  static MaterialPageRoute<dynamic> _loginRoute() {
    return MaterialPageRoute(
      builder: (_) => BlocProvider<LoginCubit>(
        create: (_) => getIt.get<LoginCubit>(),
        child: const LoginView(),
      ),
    );
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
