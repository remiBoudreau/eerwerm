import 'package:flutter/material.dart';

class FiltersProvider extends ChangeNotifier {
  Map<String, dynamic> _filters = {};

  Map<String, dynamic> get filters => _filters;

  void setFilterProperties(Map<String, dynamic> selectedFilters) {
    _filters = selectedFilters;
    notifyListeners();
  }
}
