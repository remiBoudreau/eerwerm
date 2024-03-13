import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar(
      {super.key, required this.navList, required this.setNavIn});
  final List<Map<String, dynamic>> navList;
  final Function setNavIn;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: navList.map((Map<String, dynamic> nav) {
        return BottomNavigationBarItem(
          icon: nav['icon'],
          label: nav['label'],
        );
      }).toList(),
      selectedItemColor: Colors.deepPurple[800],
    );
  }
}