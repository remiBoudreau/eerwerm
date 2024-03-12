import 'package:flutter/material.dart';
// import 'widgets/two_columns.dart';
import 'package:eerwerm/screens/gridScreen.dart';

void main() {
  runApp(const Eerwerm());
}

class Eerwerm extends StatelessWidget {
  const Eerwerm({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eerwerm',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GridScreen(title: 'Eerwerm'),
    );
  }
}

// Constant Height to Pass to All Cards
// const double cardHeight = 200;