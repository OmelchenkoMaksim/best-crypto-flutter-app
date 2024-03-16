// бомж стайл
// import 'package:crypto_coins_list/features/crypto_list/view/crypto_list_screen.dart';
// чуть лучше стайл
// import 'package:crypto_coins_list/features/crypto_list/view/view.dart';
// по их мнению лучший стайл:
// import 'package:crypto_coins_list/features/crypto_coin_details/view/crypto_coin_screen.dart';

import '../features/crypto_coin_details/view/crypto_coin_screen.dart';
import '../features/crypto_list/crypto_list.dart';

final navigateRoutes = {
  '/': (context) => const CryptoListScreen(),
  '/coin': (context) => const CryptoCoinScreen()
};
