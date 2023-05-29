// Project: eth_wallet
import 'dart:developer';

import 'package:finswallet/layouts/navbar/navbar.dart';
import 'package:finswallet/providers/bottom_navbar.dart';
import 'package:finswallet/providers/wallet_provider.dart';
import 'package:finswallet/screens/account/account.dart';
import 'package:finswallet/screens/dapp/dapp.dart';
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
        ),
        ChangeNotifierProvider(create: (_) => BottomNavbarProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue[900]!),
          useMaterial3: true,
        ),
        home: const Scaffold(body: MyHome()),
      ),
      // home: MyHome(),
    );
  }
}
