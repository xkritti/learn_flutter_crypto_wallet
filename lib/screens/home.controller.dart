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
    // log('privateKey : ${bytesToHex(key.privateKey)}');
    // log('address : ${key.address}');
    // log('publicKey : ${key.publicKey}');
  }

  void checkWallet() {
    EthPrivateKey ethPrivateKey = walletProvider.ethKey!;
    log('privateKey : ${bytesToHex(ethPrivateKey.privateKey)}');
  }
}
