import 'package:flutter/material.dart';
import 'package:visits_system/src/core/helpers/extensions.dart';

import '../locale/locale_keys.dart';

class MainFooter extends StatelessWidget {
  const MainFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FittedBox(
        child: Text(
          context.translate(LocaleKeys.footer),
          style: context.shadTextTheme.p,
        ),
      ),
    );
  }
}
