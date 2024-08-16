import 'package:file_remover/config/config.dart';
import 'package:file_remover/screens/about/about.screen.dart';
import 'package:file_remover/screens/settings/settings.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'tabs/tabs.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: _buildAppBar(context),
        bottomNavigationBar: const TabBar(tabs:[
          Tab(icon: Icon(Icons.image)),//or home
          Tab(icon: Icon(Icons.analytics)),
        ]),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: TabBarView(children: tabs),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context){
    return AppBar(
      title: const Text(Config.appName),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.info),
          tooltip: AppLocalizations.of(context)!.aboutTooltip,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const About()));
          },
        ),
        IconButton(
          icon: const Icon(Icons.settings),
          tooltip:  AppLocalizations.of(context)!.settingsTooltip,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Settings()));
          },
        ),
      ],
    );
  }
}

//create enum or record
List<Widget> tabs = [
  const TabHome(),
  const TabStats(),
];