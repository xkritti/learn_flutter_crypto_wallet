// Project: eth_wallet
import 'package:finswallet/providers/wallet_provider.dart';
import 'package:finswallet/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => WalletProvider(),
        )
      ],
      child: MaterialApp(
        title: 'FINS WALLET',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHome(),
      ),
    );
  }
}
