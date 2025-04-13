import 'package:crypto_app/app/crypto_coin/view/crypto_coin_screen.dart.dart';
import 'package:crypto_app/app/crypto_list/view/crypto_screen.dart';

final routes = {
  '/': (context) => CryptoScreen(title: "Bit Coin"),
  '/coin': (context) => CryptoCoinScreen(),
};
