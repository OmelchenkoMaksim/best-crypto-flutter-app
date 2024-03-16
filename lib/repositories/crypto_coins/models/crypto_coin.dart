// Модель для хранения цены валюты

class CryptoCoin {
  const CryptoCoin(
      {required this.imageUrl, required this.name, required this.priceInUSD});

  final String name;
  final double priceInUSD;
  final String imageUrl;
}
