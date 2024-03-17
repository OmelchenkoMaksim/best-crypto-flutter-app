import 'package:crypto_coins_list/repositories/crypto_coins/abstract_coins_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'crypto_coins_list_app.dart';
import 'repositories/crypto_coins/crypto_coins_repository.dart';

void main() {
  // GetIt.I.registerSingleton(CryptoCoinsRepository(dio: Dio()));
  GetIt.I.registerLazySingleton<AbstractCoinsRepository>(
      () => CryptoCoinsRepository(dio: Dio())); // GetIt - DI
  runApp(const MyApp());
}
