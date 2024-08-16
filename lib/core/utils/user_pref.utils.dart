import 'package:flutter/material.dart';

class UserPreferencesUtils extends ChangeNotifier {
  static const String _keyTheme = 'theme';
  static const String _keyL10n = 'l10n';
  String? _theme;
  String? _l10n;
  static const String _defaultTheme = 'dark';
  static const String _defaultL10n = 'en';//put the langCode

  //constructor
  static UserPreferencesUtils? _instance;
  static UserPreferencesUtils get instance => _instance ??= UserPreferencesUtils();
  //getter-setter
  String get theme => _theme ??= _defaultTheme;
  void setTheme(String theme) {
    _theme = theme;
  }
  String get l10n => _l10n ??= _defaultL10n;
  void setL10n(String lang) {
    _l10n = lang;
  }
}