import 'package:file_remover/core/presentation/theme.presentation.dart';
import 'package:file_remover/screens/home/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'config/l10n.config.dart';
import 'core/providers/settings.providers.dart';

void main() {
  runApp(
    MultiProvider(//TODO: to optimize
      providers: [
        ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider()),
        ChangeNotifierProvider<L10nProvider>(create: (_) => L10nProvider()),
      ],
      child:const App()
  )
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final l10nProvider = context.watch<L10nProvider>();
    final themeProvider = context.watch<ThemeProvider>();
    return MaterialApp(
      home: const HomeScreen(),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeProvider.themeMode,
      localizationsDelegates: localizationsDelegates,
      supportedLocales:supportedLocales,
      locale: l10nProvider.locale,
      debugShowCheckedModeBanner: false,
    );
  }
}
