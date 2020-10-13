import 'dart:convert';
import 'dart:ui';

import 'package:Sepetim/presentation/sign_in/widgets/terms_and_privacy_policy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  //* Helper method to keep the code in the widgets concise
  //* Localizations are accessed using an InheritedWidget "of" syntax

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  Map<String, dynamic> _localizedStrings;

  Future<bool> load() async {
    final String jsonString =
        await rootBundle.loadString('assets/lang/${locale.languageCode}.json');

    final Map<String, dynamic> jsonMap =
        json.decode(jsonString) as Map<String, dynamic>;

    _localizedStrings = jsonMap.map(
      (key, value) => MapEntry(key, value),
    );
    return true;
  }

  String translate(String key) {
    final keys = key.split("/");
    if (keys.length == 2) {
      final _sectionJson = _localizedStrings[keys[0]] as Map<String, dynamic>;
      return _sectionJson[keys[1]].toString();
    }

    return _localizedStrings[key].toString();
  }

  RichText termsAndPrivacyPolicy(BuildContext context) {
    switch (locale.languageCode) {
      case 'en':
        return termsAndPrivacyPolicyWidgetEn(context);
      case 'tr':
        return termsAndPrivacyPolicyWidgetTr(context);
      default:
        return termsAndPrivacyPolicyWidgetEn(context);
    }
  }
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'tr'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final AppLocalizations localizations = AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}
