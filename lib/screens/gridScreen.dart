// Material
import 'package:flutter/material.dart';

// Nav Bar
import 'package:eerwerm/widgets/navBarData.dart';

// Providers
import 'package:eerwerm/providers/grid_nav_in.dart';
import 'package:provider/provider.dart';
import 'package:eerwerm/widgets/gridScaffold.dart';
import 'package:eerwerm/providers/grid_scaffold_key.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  @override
  Widget build(BuildContext context) {
    return GridScaffold(
      navList: gridNavList,
      setNavIn: (int navIndex) {
        Provider.of<GridNavInProvider>(context, listen: false)
            .setGridNavIn(navIndex);
      },
    );
  }
}
