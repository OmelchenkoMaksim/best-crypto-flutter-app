import 'dart:developer';

import 'package:crypto_coins_list/repositories/crypto_coins/crypto_coins.dart';
import 'package:dio/dio.dart';

class CryptoCoinsRepository implements AbstractCoinsRepository {
  CryptoCoinsRepository({required this.dio});

  final Dio dio;

  @override
  Future<List<CryptoCoin>> getCoinsList() async {
    final response = await dio.get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,AID,AOA,&tsyms=USD');
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String,
        dynamic>; // получение объекта RAW из запроса, в котором уже вся необходимая инфа лежит
    final cryptoCoinsList = dataRaw.entries.map((e) {
      final usdData =
          (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
      final price = usdData['PRICE'];
      final imageUrl = usdData['IMAGEURL'];
      return CryptoCoin(
        name: e.key,
        priceInUSD: price,
        imageUrl: 'https://www.cryptocompare.com/$imageUrl',
      );
    }).toList();
    log(data.toString());
    return cryptoCoinsList;
  }
}

// class CryptoCoinsRepository {
//   Future<Map<String, CoinPrice>> getCoinsList() async {
//     final response = await Dio().get(
//       'https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH,BNB,AVAX&tsyms=USD',
//     );

//     final data = Map<String, dynamic>.from(response.data);
//     final Map<String, CoinPrice> coinPrices = {};

//     data.forEach((key, value) {
//       coinPrices[key] = CoinPrice.fromJson(Map<String, dynamic>.from(value));
//     });

//     return coinPrices;
//   }
// }


