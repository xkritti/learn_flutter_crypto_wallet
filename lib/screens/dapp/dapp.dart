import 'package:flutter/material.dart';

class DappPage extends StatefulWidget {
  const DappPage({super.key});

  @override
  State<DappPage> createState() => _DappPageState();
}

class _DappPageState extends State<DappPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dapp'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        titleTextStyle: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: Theme.of(context).textTheme.titleLarge!.fontSize),
      ),
      body: const Center(
        child: Text('Dapp'),
      ),
    );
  }
}
