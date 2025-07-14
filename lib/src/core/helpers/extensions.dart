import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

extension ShadThemeAccess on BuildContext {
  ShadThemeData get shadTheme => ShadTheme.of(this);
  ShadTextTheme get shadTextTheme => shadTheme.textTheme;
}
