import 'package:file_remover/core/providers/settings/theme.providers.dart';
import 'package:file_remover/core/utils/tools.utils.dart';
import 'package:file_remover/screens/settings/widgets/l10n.widget.dart';
import 'package:flutter/material.dart';
import 'package:file_remover/core/providers/settings.providers.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget{
  const Settings({super.key});

  @override
  Widget build(BuildContext context){
    final themeProvider = context.watch<ThemeProvider>();

    return Scaffold(
      appBar:AppBar(
        title: Text(AppLocalizations.of(context)!.settingsTitle),
      ),
      body: ListView(
        children:  [
           ListTile(
            leading: const Icon(Icons.brightness_4),
            title: Text(AppLocalizations.of(context)!.settingsThemeTitle),
            subtitle: Text(themeProvider.themeMode.name.capitalize()),
            trailing:Switch(
              onChanged: (_)=>{
                themeProvider.toggleTheme()
              },
              value: themeProvider.themeMode == ThemeMode.dark
            )
          ),
           const L10nDropdownMenu(),

        ],
      )
    );
  }
}