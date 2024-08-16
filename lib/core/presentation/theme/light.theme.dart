import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color.fromARGB(255, 242, 241, 255),
  unselectedWidgetColor:const Color.fromARGB(255, 222, 220, 255),
  appBarTheme: const AppBarTheme(
    shadowColor: Colors.transparent,
    elevation: 0.0,
    centerTitle: true,
    color: Color.fromARGB(237, 216, 213, 253),
    // color: Colors.blue,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.normal,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  )
);