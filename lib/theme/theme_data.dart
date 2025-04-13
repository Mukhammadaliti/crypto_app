import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  dividerColor: Colors.white10,
  textTheme: TextTheme(
    bodyMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    labelSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
  ),

  colorScheme: ColorScheme(
    primary: Colors.black87,
    onPrimary: Color.fromARGB(255, 31, 31, 31), // Важно для AppBar
    primaryContainer: Colors.black12,
    onPrimaryContainer: Colors.white,
    secondary: Colors.grey,
    onSecondary: Colors.white,
    surface: Color.fromARGB(255, 31, 31, 31),
    onSurface: Colors.white, // Для текста
    background: Colors.white,
    onBackground: Colors.black12,
    error: Colors.red,
    onError: Colors.white,
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
);
