import 'dart:developer';

import 'package:finswallet/layouts/navbar/navbar.controoler.dart';
import 'package:finswallet/providers/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  BottomNavBarController? controller;
  @override
  void initState() {
    controller = BottomNavBarController(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => controller,
        child: Consumer<BottomNavBarController>(
          builder: (context, ctrl, child) {
            return BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance_wallet_outlined),
                    label: 'Wallet'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.language_outlined), label: 'Dapp'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.rocket_launch_outlined),
                    label: 'Launchpad'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle_outlined),
                    label: 'Settings'),
              ],
              currentIndex: ctrl.currentIndex ?? 0,
              onTap: (index) {
                ctrl.changeIndex(index);
                log('index: $index');
              },
              selectedItemColor: Theme.of(context).colorScheme.primary,
            );
          },
        ));
  }
}
