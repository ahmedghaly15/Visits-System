import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert' show json;

import 'app_localizations_delegate.dart';

class AppLocalizations {
  final Locale locale;
  AppLocalizations(this.locale);
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizationsDelegate();
  late Map<String, String> _localizedStrings;
  Future<void> load() async {
    final String jsonString = await rootBundle.loadString(
      'lib/src/core/locale/lang/${locale.languageCode}.json',
    );
    final Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedStrings = jsonMap.map<String, String>((key, value) {
      return MapEntry(key, value.toString());
    });
  }

  String? translate(String key) => _localizedStrings[key];

  bool get isEnLocale => locale.languageCode == 'en';
}
