import 'package:crypto_app/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

class CryptoCoinTitel extends StatelessWidget {
  const CryptoCoinTitel({super.key, required this.coin});

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Image.network(coin.imageUrl),
      title: Text(coin.name, style: theme.textTheme.bodyMedium),
      subtitle: Text(
        "${coin.priceUSD.toStringAsFixed(2)} \$",
        style: theme.textTheme.labelSmall,
      ),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed('/coin', arguments: coin);
      },
    );
  }
}
