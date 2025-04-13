// import 'package:crypto_app/app/crypto_list/widget/crypto_coin_title.dart';
import 'package:crypto_app/app/crypto_list/widget/widgets.dart';
import 'package:crypto_app/repositories/crypto_coins/crypto_coin_repository.dart';
import 'package:crypto_app/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:flutter/material.dart';

class CryptoScreen extends StatefulWidget {
  const CryptoScreen({super.key, required this.title});
  final String title;

  @override
  State<CryptoScreen> createState() => _CryptoScreenState();
}

class _CryptoScreenState extends State<CryptoScreen> {
  List<CryptoCoin>? _cryptoCoinsList;
  @override
  void initState() {
    _loadCryptoCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:
          (_cryptoCoinsList == null)
              ? Center(child: CircularProgressIndicator(color: Colors.white))
              : ListView.separated(
                separatorBuilder:
                    (context, i) => Divider(color: theme.dividerColor),
                itemBuilder: (context, i) {
                  final coin = _cryptoCoinsList![i];
                  final coinName = coin.name;
                  return CryptoCoinTitel(coin: coin);
                },
                itemCount: _cryptoCoinsList!.length,
              ),
    );
  }

  Future<void> _loadCryptoCoins() async {
    _cryptoCoinsList = await CryptoCoinRepository().getCoinsList();
    setState(() {});
  }
}
