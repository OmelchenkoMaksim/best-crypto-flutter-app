import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Возвращает приожение со стилями гугла
    return MaterialApp(
      title: 'Flutter Crypto Money',
      theme: ThemeData(
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
                  color: Colors.grey,
                  fontWeight: FontWeight.w900,
                  fontSize: 20),
              labelSmall: TextStyle(
                  color: Colors.grey.withOpacity(0.6),
                  fontWeight: FontWeight.w600,
                  fontSize: 20))),
      // хоум это базовый экран нашего приложения
      home: const MyHomePage(title: 'Crypto Top List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    // скаффолд это виджет который используется как отдельный экран (это не прям экран а что то вроде контейнера)
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
        ),
      ),
      // центральная часть виджета-контейнера можно через билдер, а что бы бить список на части
      // используем сепарейтед
      // body: ListView.builder(
      body: ListView.separated(
        itemCount: 10,
        // separatorBuilder нужен для  ListView.separated
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) => ListTile(
          leading: SvgPicture.asset(
            'assets/svg/bitcoin-btc-logo.svg',
            height: 45,
          ),
          // боди медиум и лейбл смол мы создали в теме и оттуда юзаем
          title: Text(
            'BITOC',
            style: theme.textTheme.bodyMedium,
          ),
          subtitle: Text('2000550\$', style: theme.textTheme.labelSmall),
          trailing:
              const Icon(Icons.arrow_forward_ios, color: Colors.deepPurple),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
