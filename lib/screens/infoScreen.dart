import 'package:flutter/material.dart';

// Bottom Nav Bar
import 'package:eerwerm/widgets/custom_navigation_bar.dart';
import 'package:eerwerm/widgets/navBarData.dart';

// Widgets
import 'package:eerwerm/widgets/grid.dart';
import 'package:eerwerm/widgets/info_overlay.dart';

// Filter by 1. genre, 2. neighbourhood, 3. price range, 4.food type

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key, required this.venue});
  final Map<String, dynamic> venue;
  final filterKey = '';

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
            child: Text(
                '${widget.venue['band_name']} at ${widget.venue['band_name']}')),
      ),
      body: Stack(
        children: [
          Grid(),
          InfoOverlay(),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(navList: infoNavList),
    );
  }
}

/* TODO: 
        - InfoOverlay sizing, 
        - InfoOverlay content,
        - Transition onTap from GridScreen to InfoScreen
        - Darkened Background on InfoOverlay
        - Determine if push can be used for overlay instead of completely new Scaffold
        - 
*/