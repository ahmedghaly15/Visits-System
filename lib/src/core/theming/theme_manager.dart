import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../utils/color_manager.dart';
import '../utils/const_strings.dart';
import 'text_styles_manager.dart';

class ThemeManager {
  ThemeManager._();

  static ShadThemeData get darkTheme => ShadThemeData(
    colorScheme: const ShadSlateColorScheme.dark(
      background: ColorManager.scaffoldBg,
      primary: ColorManager.primaryColor,
    ),
    brightness: Brightness.dark,
    primaryButtonTheme: ShadButtonTheme(
      backgroundColor: ColorManager.primaryColor,
      size: ShadButtonSize.lg,
      pressedBackgroundColor: ColorManager.primaryColor.withAlpha(102),
      decoration: ShadDecoration(
        border: ShadBorder(radius: BorderRadius.circular(16.r)),
      ),
      shadows: [
        BoxShadow(
          color: ColorManager.primaryColor.withAlpha(102),
          spreadRadius: 4,
          blurRadius: 10,
          offset: Offset(0, 2.w),
        ),
      ],
    ),
    textTheme: ShadTextTheme(family: ConstStrings.fontFamily),
    inputTheme: ShadInputTheme(
      inputPadding: _inputPadding,
      style: _textFieldTextStyle,
      placeholderStyle: _textFieldTextStyle.copyWith(
        color: ColorManager.color595d66,
      ),
      decoration: ShadDecoration(
        errorStyle: TextStyle(fontSize: 13.sp, color: Colors.red),
        focusedBorder: _textFieldUnderlineInputBorder(
          borderColor: ColorManager.primaryColor,
          width: 2,
        ),
        errorBorder: _textFieldUnderlineInputBorder(
          borderColor: Colors.red,
          width: 1.3,
        ),
        border: _textFieldUnderlineInputBorder(),
        disableSecondaryBorder: true,
      ),
    ),
  );

  static ThemeData materialTheme(BuildContext context) =>
      Theme.of(context).copyWith(
        scaffoldBackgroundColor: ColorManager.scaffoldBg,
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      );

  static EdgeInsets get _inputPadding =>
      EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h);

  static TextStyle get _textFieldTextStyle => TextStylesManager.font12Regular;

  static ShadBorder _textFieldUnderlineInputBorder({
    Color? borderColor,
    double width = 1,
  }) {
    return ShadBorder(
      radius: BorderRadius.circular(16.r),
      top: _inputBorderSide(borderColor, width),
      bottom: _inputBorderSide(borderColor, width),
      left: _inputBorderSide(borderColor, width),
      right: _inputBorderSide(borderColor, width),
    );
  }

  static ShadBorderSide _inputBorderSide(Color? borderColor, double width) {
    return ShadBorderSide(
      color: borderColor ?? ColorManager.color595d66,
      width: width.w,
    );
  }
}
