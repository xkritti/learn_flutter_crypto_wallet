import 'package:finswallet/layouts/navbar/navbar.dart';
import 'package:finswallet/providers/bottom_navbar.dart';
import 'package:finswallet/screens/account/account.dart';
import 'package:finswallet/screens/dapp/dapp.dart';
import 'package:finswallet/screens/setting/setting.dart';
import 'package:finswallet/screens/wallet/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  BottomNavbarProvider? controller;
  final List<Widget> _children = [
    const WalletScreen(),
    const DappPage(),
    const Account(),
    const SettingPage(),
  ];

  @override
  void initState() {
    controller = Provider.of<BottomNavbarProvider>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => controller,
      child: Consumer<BottomNavbarProvider>(
        builder: (context, ctrl, child) {
          return Scaffold(
            body: _children[ctrl.currentIndex ?? 0],
            bottomNavigationBar: const BottomNavBar(),
            // floatingActionButton: FloatingActionButton(
            //   onPressed: () {
            //     log('FloatingActionButton pressed : ${ctrl.currentIndex ?? 0}');
            //   },
            //   backgroundColor: Colors.blue,
            //   child: const Icon(Icons.add),
            // )
          );
        },
      ),
    );
  }
}
