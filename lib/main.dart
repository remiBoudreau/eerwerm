import 'package:flutter/material.dart';
// import 'widgets/two_columns.dart';
import 'package:eerwerm/screens/gridScreen.dart';
import 'package:provider/provider.dart';

// Providers
import 'package:eerwerm/providers/date.dart';
import 'package:eerwerm/providers/filters.dart';
import 'package:eerwerm/providers/grid_nav_in.dart';
import 'package:eerwerm/providers/grid_scaffold_key.dart';

void main() {
  runApp(const Eerwerm());
}

class Eerwerm extends StatelessWidget {
  const Eerwerm({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => DateProvider()),
          ChangeNotifierProvider(create: (context) => FiltersProvider()),
          ChangeNotifierProvider(create: (context) => GridNavInProvider()),
          ChangeNotifierProvider(
              create: (context) => GridScaffoldKeyProvider()),
        ],
        child: MaterialApp(
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const GridScreen(),
        ));
  }
}

// const double cardHeight = 200;
