import 'package:flutter/material.dart';
import 'router/router.dart';
import 'theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Возвращает приожение со стилями гугла
    return MaterialApp(
      title: 'Flutter Crypto Money',
      theme: darkTheme,
      // хоум это базовый экран нашего приложения
      routes: navigateRoutes,
      // home: const CryptoListScreen(title: 'Crypto Top List'), home нельзя вместе с routes т.к. он его переопределяет
    );
  }
}
