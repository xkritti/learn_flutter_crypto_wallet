import 'package:finswallet/providers/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavBarController extends ChangeNotifier {
  BottomNavbarProvider? bottomNavbarProvider;
  BuildContext context;
  BottomNavBarController(this.context) {
    bottomNavbarProvider =
        Provider.of<BottomNavbarProvider>(context, listen: false);
  }

  get currentIndex => bottomNavbarProvider!.currentIndex;

  void changeIndex(int index) {
    bottomNavbarProvider!.changeIndex(index);
    notifyListeners();
  }
}
