import 'dart:math';
import 'package:flutter/material.dart';
import 'package:web3dart/web3dart.dart';

class WalletProvider extends ChangeNotifier {
  EthPrivateKey? _ethKey;

  EthPrivateKey? get ethKey => _ethKey;

  void createWallet() {
    var rng = Random.secure();
    EthPrivateKey priKey = EthPrivateKey.createRandom(rng);
    _ethKey = priKey;
    // notifyListeners();
  }
}
