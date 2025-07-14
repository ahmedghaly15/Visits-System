import 'package:visits_system/src/core/helpers/extensions.dart';

class InputValidator {
  InputValidator._();

  static String? validateUsernameField(String? value) {
    if (value.isNullOrEmpty) {
      return "لا يمكن ترك اسم المستخدم فارغًا!";
    } else if (value!.length < 5) {
      return "يرجى إدخال اسم مستخدم يحتوي على 5 أحرف على الأقل";
    }
    return null;
  }

  static String? validatePasswordField(String? value) {
    if (value.isNullOrEmpty) {
      return "لا يمكن ترك كلمة المرور فارغة!";
    } else if (value!.length < 6) {
      return "يرجى إدخال كلمة مرور صالحة (6 أحرف على الأقل)";
    }
    return null;
  }
}
