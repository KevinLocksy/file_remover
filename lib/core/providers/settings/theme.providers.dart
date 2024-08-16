import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeProvider extends ChangeNotifier {
  static bool isSystemThemeDark = SchedulerBinding.instance.platformDispatcher.platformBrightness == Brightness.dark;
  ThemeMode _themeMode = isSystemThemeDark ? ThemeMode.dark : ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  void toggleTheme(){
    _themeMode = _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    //add setTheme()
    notifyListeners();
  }
}
