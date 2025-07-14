import 'package:visits_system/src/core/helpers/extensions.dart';

import '../../helpers/cache_keys.dart';
import '../../helpers/secure_storage_helper.dart';

bool isUserLoggedIn = false;
String accessToken = '';

Future<void> checkIfUserIsLoggedIn() async {
  final cachedAccessToken = await SecureStorageHelper.getSecuredString(
    CacheKeys.accessToken,
  );
  if (cachedAccessToken.isNullOrEmpty) {
    isUserLoggedIn = false;
  } else {
    accessToken = cachedAccessToken;
    isUserLoggedIn = true;
  }
}
