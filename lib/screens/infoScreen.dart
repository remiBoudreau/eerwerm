import 'package:eerwerm/widgets/gridScaffold.dart';
import 'package:flutter/material.dart';

// Nav Bar
import 'package:eerwerm/widgets/navBarData.dart';

// Widgets
import 'package:eerwerm/widgets/info.dart';

// Providers

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key, this.venue = const {'longDescription': ''}});
  final Map<String, dynamic> venue;

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  int infoNavIn = 0;

  void setInfoNavIn(int navIndex) {
    setState(() {
      infoNavIn = navIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Container(
          color: Colors.black.withAlpha(100),
        )),
        Padding(
            padding: EdgeInsets.only(
                top: 48.0, bottom: 24.0, right: 24.0, left: 24.0),
            child: Info(venue: widget.venue, infoNavIn: infoNavIn)),
      ],
    );
  }
}

/* TODO: 
        - InfoOverlay content,
        - Transition onTap from GridScreen to InfoScreen
*/
