import 'package:flutter/material.dart';
import 'package:visits_system/src/core/helpers/extensions.dart';

import '../../../../../core/helpers/secure_storage_helper.dart';
import '../../../../../core/router/routes.dart';

class LogoutIconButton extends StatelessWidget {
  const LogoutIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        SecureStorageHelper.clearAllSecuredData();
        context.pushReplacementNamed(Routes.login);
      },
      icon: const Icon(Icons.logout, color: Colors.red),
    );
  }
}
