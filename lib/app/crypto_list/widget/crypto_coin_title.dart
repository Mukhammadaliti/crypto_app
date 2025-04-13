import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoCoinTitel extends StatelessWidget {
  const CryptoCoinTitel({super.key, required this.coinName});

  final String coinName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      leading: SvgPicture.asset(
        "assets/svg/bitcoin.svg",
        height: 30,
        width: 30,
      ),
      title: Text("Bit Coin", style: theme.textTheme.bodyMedium),
      subtitle: Text("200\$", style: theme.textTheme.labelSmall),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed('/coin', arguments: coinName);
      },
    );
  }
}
