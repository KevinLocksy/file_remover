class L10nModel {
  final String lang;
  final String subLang;//translation in english
  final String langCode;
  final String langCountry;
  final String nameCountry;

  const L10nModel({
    required this.lang,
    required this.subLang,
    required this.langCode,
    required this.langCountry,
    required this.nameCountry,
  });

  bool hasSameLangCode(String langCode){
    return this.langCode.toLowerCase() == langCode;
  }
}