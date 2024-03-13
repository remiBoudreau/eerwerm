import 'package:flutter/material.dart';

class GridNavInProvider extends ChangeNotifier {
  int _gridNavIn = 0;

  int get gridNavIn => _gridNavIn;

  void setGridNavIn(int selectedgridNavIn) {
    _gridNavIn = selectedgridNavIn;
    notifyListeners();
  }
}
