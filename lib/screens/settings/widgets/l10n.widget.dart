import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:file_remover/config/l10n.config.dart';
import 'package:file_remover/core/models/l10n.model.dart';
import 'package:file_remover/core/providers/settings/l10n.providers.dart';
import 'package:provider/provider.dart';

class L10nDropdownMenu extends StatelessWidget {
  const L10nDropdownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final l10nProvider = Provider.of<L10nProvider>(context);


    return ListTile(
      leading: const Icon(Icons.language),
      title: Text(AppLocalizations.of(context)!.settingsLangTitle),
      subtitle: Text("${l10nProvider.l10n.lang} - ${l10nProvider.l10n.subLang}"),
      trailing:DropdownButton<String>(
        value:l10nProvider.l10n.langCode,
        onChanged:(String? newLangCode) {
          l10nProvider.setLocale(newLangCode!);
        },
        items: _generateL10nDropdownOptions(languageSettings),
      )
    );
  }
}

List<DropdownMenuItem<String>> _generateL10nDropdownOptions(Map<String,L10nModel> mapping) {
  List<DropdownMenuItem<String>> langList = [];

  mapping.forEach((String langCode, L10nModel l10nModel) {
    langList.add(
      DropdownMenuItem<String>(
          value: l10nModel.langCode,
          child: Text(l10nModel.lang),
        )
    ); 
  });

  return langList;
}