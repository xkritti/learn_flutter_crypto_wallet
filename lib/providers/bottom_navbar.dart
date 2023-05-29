import 'package:flutter/material.dart';

class BottomNavbarProvider extends ChangeNotifier {
  int? _currentIndex;
  int? get currentIndex => _currentIndex;

  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
