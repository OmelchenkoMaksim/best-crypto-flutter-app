import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({super.key, required this.coinName});

  final String coinName;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return ListTile(
      leading: SvgPicture.asset(
        'assets/svg/bitcoin-btc-logo.svg',
        height: 45,
      ),
      // боди медиум и лейбл смол мы создали в теме и оттуда юзаем
      title: Text(
        coinName,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text('2000550\$', style: theme.textTheme.labelSmall),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.deepPurple),
      onTap: ()
          // { первый вариант навигации
          //   Navigator.of(context).push(
          //       MaterialPageRoute(builder: (context) => CryptoCoinScreen()));
          // },
          {
        Navigator.of(context)
            .pushNamed('/coin', // второй вариант навигации (корректный)
                arguments: coinName);
      },
    );
  }
}
