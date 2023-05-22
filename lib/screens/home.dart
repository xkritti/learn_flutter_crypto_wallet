import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.controller.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  late MyHomeController controller;

  @override
  void initState() {
    controller = MyHomeController(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyHomeController>(
      create: (_) => controller,
      child: Consumer<MyHomeController>(builder: (context, ctrl, child) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: const Text('FINS WALLET'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Frist Step Create Your Wallet',
                  ),
                  // Text(
                  //   '$_counter',
                  //   style: Theme.of(context).textTheme.headlineMedium,
                  // ),
                  ElevatedButton(
                    onPressed: () {
                      ctrl.newWallet();
                    },
                    child: const Text('Create Wallet'),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        ctrl.checkWallet();
                      },
                      child: const Text('Check')),
                ],
              ),
            ));
      }),
    );
  }
}
