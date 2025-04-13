// import 'package:crypto_app/app/crypto_list/widget/crypto_coin_title.dart';
import 'package:crypto_app/app/crypto_list/widget/widgets.dart';
import 'package:flutter/material.dart';

class CryptoScreen extends StatefulWidget {
  const CryptoScreen({super.key, required this.title});
  final String title;

  @override
  State<CryptoScreen> createState() => _CryptoScreenState();
}

class _CryptoScreenState extends State<CryptoScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: ListView.separated(
        separatorBuilder: (context, i) => Divider(color: theme.dividerColor),
        itemBuilder: (context, i) {
          const coinName = 'BMB';
          return CryptoCoinTitel(coinName: coinName);
        },
        itemCount: 10,
      ),
    );
  }
}
