import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:eerwerm/providers/date.dart';
import 'package:eerwerm/widgets/custom_date_picker.dart';

import 'package:eerwerm/widgets/custom_app_bar.dart';
import 'package:eerwerm/widgets/custom_nav_bar.dart';
import 'package:eerwerm/widgets/grid.dart';

class GridScaffold extends StatefulWidget {
  GridScaffold(
      {super.key,
      required this.navList,
      required this.setNavIn}); //, required this.venues});
  final List<Map<String, dynamic>> navList;
  final Function setNavIn;

  @override
  State<GridScaffold> createState() => _GridScaffoldState();
}

class _GridScaffoldState extends State<GridScaffold> {
  @override
  Widget build(BuildContext context) {
    final date = Provider.of<DateProvider>(context).date;
    final setDate = Provider.of<DateProvider>(context).setDate;

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
          navList: widget.navList, setNavIn: widget.setNavIn),
    );
  }
}
