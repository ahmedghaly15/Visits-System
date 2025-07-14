import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtil;
import 'package:visits_system/di.dart';

import 'bloc_observer.dart';
import 'src/core/widgets/flutter_error_details_view.dart';
import 'src/visits_system_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  ErrorWidget.builder = (FlutterErrorDetails details) =>
      FlutterErrorDetailsView(details: details);
  Bloc.observer = MyBlocObserver();
  setupDI();
  runApp(const VisitsSystemApp());
}
