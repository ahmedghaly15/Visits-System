import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../locale/app_localizations.dart';

extension ShadThemeAccess on BuildContext {
  ShadThemeData get shadTheme => ShadTheme.of(this);
  ShadTextTheme get shadTextTheme => shadTheme.textTheme;
}

extension AppNavigator on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String newRoute, {Object? arguments}) {
    return Navigator.pushReplacementNamed(this, newRoute, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String newRoute, {
    Object? arguments,
  }) {
    return Navigator.pushNamedAndRemoveUntil(
      this,
      newRoute,
      (Route<dynamic> route) => false, // remove all previous routes
      arguments: arguments,
    );
  }

  void pop() => Navigator.pop(this);

  void popTop() => Navigator.of(this, rootNavigator: true).pop();
}

extension ShowMyToast on BuildContext {
  void showToast(String message) => ShadToaster.of(this).show(
    ShadToast.destructive(
      backgroundColor: Colors.black54,
      duration: const Duration(seconds: 2),
      radius: BorderRadius.circular(16.r),
      description: Text(message),
    ),
  );
}

extension UnfocusKeyboard on BuildContext {
  void unfocusKeyboard() => FocusScope.of(this).unfocus();
}

extension NullOrEmptyString on String? {
  bool get isNullOrEmpty => this?.isEmpty ?? true;
}

extension Translate on BuildContext {
  String translate(String key) {
    return AppLocalizations.of(this)!.translate(key) ??
        'Key Not found to translate';
  }
}
