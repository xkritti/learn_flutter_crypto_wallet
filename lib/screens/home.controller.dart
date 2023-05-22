import 'dart:developer';

import 'package:finswallet/providers/wallet_provider.dart';
import 'package:flutter/material.dart';
import 'package:web3dart/crypto.dart';
import 'package:web3dart/web3dart.dart';

class MyHomeController extends ChangeNotifier {
  BuildContext context;
  MyHomeController(this.context);

  void newWallet() {
    EthPrivateKey key = WalletProvider().createWallet();
    log('privateKey : ${bytesToHex(key.privateKey)}');
    log('address : ${key.address}');
    log('publicKey : ${key.publicKey}');
  }

  void checkWallet() {
    // Credentials credentials =
    //     Provider.of<WalletProvider>(context, listen: false).credentials;
    // log('address : ${credentials.address.toString()}');
  }
}
