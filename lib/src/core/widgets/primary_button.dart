import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:visits_system/src/core/helpers/extensions.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.text,
    this.child,
    this.leading,
    this.onPressed,
    this.expands,
    this.size,
    this.decoration,
  });

  final String? text;
  final Widget? child, leading;
  final VoidCallback? onPressed;
  final bool? expands;
  final ShadButtonSize? size;
  final ShadDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return ShadButton(
      size: size,
      decoration: decoration,
      onPressed: onPressed,
      leading: leading,
      expands: expands,
      child:
          child ??
          Text(
            text!,
            style: context.shadTextTheme.p.copyWith(color: Colors.white),
          ),
    );
  }
}
