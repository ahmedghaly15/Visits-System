import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:visits_system/src/core/helpers/extensions.dart';

import '../../../../../core/helpers/secure_storage_helper.dart';
import '../../../../../core/router/routes.dart';
import '../../../../../core/utils/assets.dart';

class LogoutIconButton extends StatelessWidget {
  const LogoutIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 8.w,
      children: [
        CircleAvatar(
          radius: 18.r,
          backgroundImage: const AssetImage(Assets.imagesPerson),
        ),
        IconButton(
          onPressed: () {
            SecureStorageHelper.clearAllSecuredData();
            context.pushReplacementNamed(Routes.login);
          },
          icon: const Icon(Icons.logout, color: Colors.red),
        ),
      ],
    );
  }
}
