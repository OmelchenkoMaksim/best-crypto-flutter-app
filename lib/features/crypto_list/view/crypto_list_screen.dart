import 'package:crypto_coins_list/features/crypto_list/widgets/crypto_coin_tile.dart';
import 'package:flutter/material.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  @override
  Widget build(BuildContext context) {
    // скаффолд это виджет который используется как отдельный экран (это не прям экран а что то вроде контейнера)
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'CryptoListScreen',
        ),
      ),
      // центральная часть виджета-контейнера можно через билдер, а что бы бить список на части
      // используем сепарейтед
      // body: ListView.builder(
      body: ListView.separated(
        itemCount: 10,
        // separatorBuilder нужен для  ListView.separated
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          const coinName = 'BITOC';
          return const CryptoCoinTile(coinName: coinName);
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
