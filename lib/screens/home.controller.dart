import 'dart:developer';

import 'package:finswallet/providers/wallet_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web3dart/crypto.dart';
import 'package:web3dart/web3dart.dart';

class MyHomeController extends ChangeNotifier {
  late WalletProvider walletProvider;
  BuildContext context;
  MyHomeController(this.context) {
    walletProvider = Provider.of<WalletProvider>(context, listen: false);
  }

  void newWallet() {
    walletProvider.createWallet();
    notifyListeners();
    // EthPrivateKey key = WalletProvider().createWallet();
    // log('privateKey : ${bytesToHex(key.privateKey)}');
    // log('address : ${key.address}');
    // log('publicKey : ${key.publicKey}');
  }

  void checkWallet() {
    // Credentials credentials =
    //     Provider.of<WalletProvider>(context, listen: false).credentials;
    // log('address : ${credentials.address.toString()}');
  }
}
