import 'dart:math';
import 'package:web3dart/web3dart.dart';

class WalletProvider {
  EthPrivateKey createWallet() {
    var rng = Random.secure();
    EthPrivateKey priKey = EthPrivateKey.createRandom(rng);
    return priKey;
  }
}
