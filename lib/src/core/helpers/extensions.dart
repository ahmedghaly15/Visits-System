import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

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

extension ShowDialog<T> on BuildContext {
  Future<T?> showDialog({
    Widget? title,
    Widget? description,
    Widget? child,
    String? titleText,
    List<Widget>? actions,
    EdgeInsets? scrollPadding,
    double gap = 24.0,
    double radius = 16.0,
    bool barrierDismissible = true,
  }) async {
    return showShadDialog<T?>(
      context: this,
      barrierDismissible: barrierDismissible,
      builder: (_) => ShadDialog(
        gap: gap.h,
        scrollPadding: scrollPadding ?? EdgeInsets.symmetric(horizontal: 24.w),
        radius: BorderRadius.circular(radius.r),
        removeBorderRadiusWhenTiny: false,
        title: title ?? (titleText != null ? Text(titleText) : null),
        description: description,
        actions: actions ?? [const SizedBox.shrink()],
        child: child,
      ),
    );
  }
}

extension UnfocusKeyboard on BuildContext {
  void unfocusKeyboard() => FocusScope.of(this).unfocus();
}

extension StringExtension on String? {
  bool get isNullOrEmpty => this?.isEmpty ?? true;
}
