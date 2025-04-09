import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(CryptoApp());
}

class CryptoApp extends StatelessWidget {
  const CryptoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        dividerColor: Colors.white10,
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          labelSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),

        colorScheme: const ColorScheme(
          primary: Colors.black87,
          onPrimary: Colors.black26, // Важно для AppBar
          primaryContainer: Colors.black87,
          onPrimaryContainer: Colors.white,
          secondary: Colors.grey,
          onSecondary: Colors.white,
          surface: Colors.black87,
          onSurface: Colors.white, // Для текста
          background: Colors.white,
          onBackground: Colors.black,
          error: Colors.red,
          onError: Colors.white,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Bit Coins'),
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
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: ListView.separated(
        separatorBuilder:
            (context, index) => Divider(color: theme.dividerColor),
        itemBuilder:
            (context, index) => ListTile(
              leading: SvgPicture.asset(
                "assets/svg/bitcoin.svg",
                height: 30,
                width: 30,
              ),
              title: Text("Bit Coin", style: theme.textTheme.bodyMedium),
              subtitle: Text("200\$", style: theme.textTheme.labelSmall),
            ),
        itemCount: 10,
      ),
    );
  }
}
