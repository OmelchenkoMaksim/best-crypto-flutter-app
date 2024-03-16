import 'dart:developer';
import 'package:flutter/material.dart';

class CryptoCoinScreen extends StatefulWidget {
  // виджет с состоянием из контекста
  const CryptoCoinScreen({super.key});

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  String? coinName;
  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    // assert(args != null && args is! String,
    //     'You must provide String args'); // если проверка не пройдет - будет красный экран
    if (args == null) {
      // более примитивный вариант проверки с сообщениями в лог
      log('You must provide args!');
      return;
    }
    if (args is! String) {
      log('You must provide String args!');
      return;
    }
    coinName = args;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(coinName ?? 'none..')),
    );
  }
}
