import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridScaffoldKeyProvider extends ChangeNotifier {
  Key _gridScaffoldKey = GlobalKey();

  Key get gridScaffoldKey => _gridScaffoldKey;
}
