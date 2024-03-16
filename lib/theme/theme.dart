import 'package:flutter/material.dart';

final darkTheme = ThemeData(
    // scaffoldBackgroundColor это применение бэкрграунда ко всем виджетам темы
    appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
    scaffoldBackgroundColor: Colors.lightGreenAccent,
    dividerColor: Colors.white24,
    listTileTheme: const ListTileThemeData(iconColor: Colors.white),
    //  тут можно цвета приложения менять
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
    useMaterial3: true,
    textTheme: TextTheme(
        bodyMedium: const TextStyle(
            color: Colors.grey, fontWeight: FontWeight.w900, fontSize: 20),
        labelSmall: TextStyle(
            color: Colors.grey.withOpacity(0.6),
            fontWeight: FontWeight.w600,
            fontSize: 20)));
