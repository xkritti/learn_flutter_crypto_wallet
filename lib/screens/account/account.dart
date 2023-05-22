import 'package:finswallet/providers/wallet_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  late WalletProvider walletProvider;

  @override
  void initState() {
    walletProvider = Provider.of<WalletProvider>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(('Account'))),
      body: Column(children: [Text("${walletProvider.ethKey?.address}")]),
    );
  }
}
