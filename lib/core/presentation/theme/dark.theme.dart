import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color.fromARGB(255, 32, 34, 38),
  appBarTheme: const AppBarTheme(
    shadowColor: Color.fromARGB(255, 32, 34, 38),
    elevation: 0.0,
    centerTitle: true,
    // color: Color.fromARGB(255, 70, 100, 102),
    color: Color.fromARGB(199, 55, 65, 85),
    titleTextStyle: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.normal,
    ),
  ),
  // primaryColor: const Color.fromARGB(255, 123, 109, 159),
  primaryColor: const Color.fromARGB(255, 60, 69, 87),
  canvasColor: const Color(0xFF202226), //dropdown menu
  cardColor: const Color.fromARGB(255, 56, 75, 77),//tiles background
  primaryColorDark: const Color.fromARGB(255, 56, 75, 77),//tiles background
  shadowColor: const Color.fromARGB(255, 60, 69, 87),
  unselectedWidgetColor:const Color.fromARGB(255, 26, 27, 31),
  inputDecorationTheme: const InputDecorationTheme(//search bar 
    iconColor: Color.fromARGB(255, 198, 202, 210), //TODO color text bar | 
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        style: BorderStyle.solid, 
        color: Color.fromARGB(255, 62, 119, 123)
      ),
    )
  ),
  textButtonTheme: const TextButtonThemeData(
    style:ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 65, 90, 92)),
      foregroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 198, 202, 210)),
      )
    ),
  tabBarTheme: TabBarTheme(
    labelColor: const Color.fromARGB(255, 70, 100, 102),
    indicatorColor: const Color.fromARGB(255, 117, 118, 126), //bottom indicator
    overlayColor: WidgetStateProperty.resolveWith<Color>(
      (Set<WidgetState> states) {
      if (states.contains(WidgetState.pressed)) {
        // return Colors.white;
        return const Color.fromARGB(255, 70, 100, 102);
      } else if (states.contains(WidgetState.hovered)){
        return const Color.fromARGB(197, 46, 49, 54);
      }
      return const Color.fromARGB(255, 56, 82, 84).withOpacity(.78);
    }),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color.fromARGB(255, 65, 90, 92),
    foregroundColor: Color.fromARGB(255, 55, 65, 85),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Color.fromARGB(255, 70, 100, 102);
      }
      return const Color.fromARGB(255, 56, 82, 84).withOpacity(.78);
    }),
    trackColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Color.fromARGB(255, 51, 58, 73);
      }
      return const Color.fromARGB(255, 51, 58, 73).withOpacity(.48);
    }),
    trackOutlineColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Color.fromARGB(255, 60, 69, 87);
      }
      return const Color.fromARGB(255, 60, 69, 87).withOpacity(.48);
    }),
  ),
);