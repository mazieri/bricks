import 'package:flutter/material.dart';
import 'dart:math' as math;

//TODO:: customize the theme here, already with light and dark theme according to the system

ThemeData lightTheme() => ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor:
          Color((math.Random().nextDouble() * 0xF11FFF).toInt())
              .withOpacity(0.9),
      // floatingActionButtonTheme: const FloatingActionButtonThemeData(
      //   foregroundColor: Color.fromARGB(255, 255, 255, 255),
      // ),
      colorScheme: const ColorScheme.light(
        brightness: Brightness.light,
        primary: Color.fromARGB(255, 124, 40, 172),
        secondary: Color.fromARGB(255, 202, 18, 18),
      ),
    );

ThemeData darkTheme() => ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor:
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(0.1),
      colorScheme: const ColorScheme.dark(
        brightness: Brightness.dark,
        primary: Color.fromARGB(255, 255, 255, 255),
        // primaryContainer: Color.fromARGB(255, 218, 171, 171),
        // onPrimaryContainer: Color.fromARGB(255, 0, 0, 0),
        secondary: Color.fromARGB(255, 255, 255, 255),
        // secondaryContainer: Color.fromARGB(255, 64, 156, 151),
        // onSecondaryContainer: Color.fromARGB(255, 0, 0, 0),
        surface: Color.fromARGB(255, 199, 40, 40),
        background: Color.fromARGB(255, 0, 0, 0),
        error: Color.fromARGB(255, 199, 40, 40),
        onPrimary: Color.fromARGB(255, 0, 0, 0),
        onSecondary: Color.fromARGB(255, 0, 0, 0),
        onSurface: Color.fromARGB(255, 255, 255, 255),
        onBackground: Color.fromARGB(255, 255, 255, 255),
        onError: Color.fromARGB(255, 255, 255, 255),
      ),
    );
