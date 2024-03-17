import 'package:crypto_coins_list/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:flutter/material.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({super.key, required this.coin});

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return ListTile(
      leading: Image.network(coin.imageUrl),
      // SvgPicture.asset(
      //   'assets/svg/bitcoin-btc-logo.svg',
      //   height: 45,
      // ),
      // боди медиум и лейбл смол мы создали в теме и оттуда юзаем
      title: Text(
        coin.name,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle:
          Text('${coin.priceInUSD} \$', style: theme.textTheme.labelSmall),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.deepPurple),
      onTap: ()
          // { первый вариант навигации
          //   Navigator.of(context).push(
          //       MaterialPageRoute(builder: (context) => CryptoCoinScreen()));
          // },
          {
        Navigator.of(context)
            .pushNamed('/coin', // второй вариант навигации (корректный)
                arguments: coin);
      },
    );
  }
}
