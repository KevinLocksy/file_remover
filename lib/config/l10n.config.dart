import 'package:file_remover/core/models/l10n.model.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates = const [
  AppLocalizations.delegate, 
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];

List<Locale> supportedLocales = const [
  Locale('en'),
  Locale('fr') 
];

//for translation
const Map<String, L10nModel> languageSettings = {
  "en":L10nModel(
    lang:"English",
    subLang:"English",
    langCode:"en",
    langCountry:"uk",
    nameCountry:"United Kingdom",
  ),
  "fr":L10nModel(
    lang:"Français",
    subLang:"French",
    langCode:"fr",
    langCountry:"fr",
    nameCountry:"France",
  ),
};