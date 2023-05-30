import 'dart:developer';

import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      textStyle: const TextStyle(
          fontSize: 9, fontWeight: FontWeight.w600, color: Colors.black),
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      shadowColor: Colors.transparent,
      minimumSize: const Size(45, 45),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
    return Scaffold(
      appBar: AppBar(
          title: const Text('Wallet'),
          backgroundColor: Theme.of(context).colorScheme.primary,
          titleTextStyle: TextStyle(
            fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.01,
                  vertical: MediaQuery.of(context).size.height * 0.01),
              child: Column(
                children: [
                  const Column(
                    children: [
                      Text('Balance'),
                      Text('20,000 USD'),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.001,
                        vertical: MediaQuery.of(context).size.height * 0.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            ElevatedButton(
                              style: buttonStyle,
                              onPressed: () {
                                log('SCAN pressed');
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.qr_code_scanner_outlined),
                                  // Text('SCAN'),
                                ],
                              ),
                            ),
                            Text('SCAN')
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              style: buttonStyle,
                              onPressed: () {
                                log('RECEIVE pressed');
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.qr_code_2),
                                ],
                              ),
                            ),
                            Text('RECEIVE'),
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              style: buttonStyle,
                              onPressed: () {
                                log('SEND pressed');
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.send),
                                ],
                              ),
                            ),
                            Text('SEND'),
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              style: buttonStyle,
                              onPressed: () {
                                log('BUY pressed');
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.wallet_rounded),
                                ],
                              ),
                            ),
                            Text('BUY'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
