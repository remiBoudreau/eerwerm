import 'package:flutter/material.dart';
import 'package:eerwerm/widgets/grid.dart';
import 'package:eerwerm/widgets/custom_navigation_bar.dart';

// Filter by 1. genre, 2. neighbourhood, 3. price range, 4.food type

class GridScreen extends StatefulWidget {
  const GridScreen({super.key, required this.title});
  final String title;
  final bool infoView = false;
  final filterKey = 'cuisine';

  @override
  State<GridScreen> createState() => _GridScreenState();
  // Add change based on Bottom App Bar
}

class _GridScreenState extends State<GridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text(widget.title)),
      ),
      body: Grid(),
      bottomNavigationBar:
          widget.infoView ? InfoNavigationBar() : GridNavigationBar(),
    );
  }
}
