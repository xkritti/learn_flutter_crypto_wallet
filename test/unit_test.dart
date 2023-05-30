import 'package:finswallet/providers/wallet_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  late WalletProvider walletProvider = WalletProvider();

  group("WALLET TEST", () {
    test('[CREATE WALLET]', () {
      walletProvider.createWallet();
      expect(walletProvider.ethKey, isNotNull);
    });
  });
}
