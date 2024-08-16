import 'package:file_remover/config/l10n.config.dart';
import 'package:file_remover/core/models/l10n.model.dart';
import 'package:file_remover/core/utils/user_pref.utils.dart';
import 'package:flutter/material.dart';

class L10nProvider extends ChangeNotifier {
  L10nModel _l10n = languageSettings[UserPreferencesUtils.instance.l10n]!;
  Locale _locale =  Locale(UserPreferencesUtils.instance.l10n);

  Locale get locale => _locale;
  L10nModel get l10n => _l10n;

  void setLocale(String langCode) {
    if (_l10n.hasSameLangCode(langCode)) return;
    
    _l10n = languageSettings[langCode]!;
    _locale = Locale.fromSubtags(languageCode: langCode);
    UserPreferencesUtils.instance.setL10n(langCode);
    notifyListeners();
  }
}