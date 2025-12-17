import 'package:flutter/material.dart';

class TopButtonSelectionProvider extends ChangeNotifier {
  int _selectedIndex = -1;
  int get selectedIndex => _selectedIndex;

  void select(int index) {
    if (selectedIndex == index) return;
    _selectedIndex = index;
    notifyListeners();
  }

  void clear() {
    if (_selectedIndex == -1) return;
    _selectedIndex = -1;
    notifyListeners();
  }
}
