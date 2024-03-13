// Material
import 'package:flutter/material.dart';

// App Bar
import 'package:eerwerm/widgets/custom_app_bar.dart';

// Nav Bar
import 'package:eerwerm/widgets/custom_navigation_bar.dart';
import 'package:eerwerm/widgets/navBarData.dart';

// Widgets
import 'package:eerwerm/widgets/custom_date_picker.dart';
import 'package:eerwerm/widgets/grid.dart';

// Providers
import 'package:eerwerm/providers/grid_nav_in.dart';
import 'package:provider/provider.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: ListView(
        children: [
          Divider(),
          CustomDatePicker(),
          Divider(),
          Grid(),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(
        navList: gridNavList,
        setNavIn: (int navIndex) {
          Provider.of<GridNavInProvider>(context, listen: false)
              .setGridNavIn(navIndex);
        },
      ),
    );
  }
}
