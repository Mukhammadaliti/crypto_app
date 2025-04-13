import 'package:crypto_app/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:dio/dio.dart';

class CryptoCoinRepository {
  Future<List<CryptoCoin>> getCoinsList() async {
    final response = await Dio().get(
      'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,USDC,SOL,USDT,XPR&tsyms=USD',
    );
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final cryptaCoinList =
        dataRaw.entries.map((e) {
          final usdData =
              (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
          final price = usdData['PRICE'];
          final imageURL = usdData['IMAGEURL'];
          return CryptoCoin(
            name: e.key,
            priceUSD: price,
            imageUrl: 'https://www.cryptocompare.com/$imageURL',
          );
        }).toList();
    return cryptaCoinList;
  }
}
