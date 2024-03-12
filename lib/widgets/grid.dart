import 'package:flutter/material.dart';
import 'package:eerwerm/widgets/custom_card.dart';
import 'package:eerwerm/widgets/info_overlay.dart';
import 'package:eerwerm/widgets/data.dart';

class Grid extends StatelessWidget {
  final showInfoOverlay = false;

  // final List<Map<String, dynamic>> venues;

  final Map<String, dynamic> venue = {};

  List<int> adjustList(int n) {
    List<int> repeatingPattern = [6, 4, 4, 6];
    List<int> adjustedList = [];

    for (int i = 0; i < n; i++) {
      adjustedList.add(repeatingPattern[i % repeatingPattern.length]);
    }

    return adjustedList;
  }

  @override
  Widget build(BuildContext context) {
    List<int> flexInts = adjustList(venues.length);

    return ListView.builder(
      itemCount: (venues.length / 2).ceil(),
      itemBuilder: (BuildContext context, int index) {
        return Row(
          children: <Widget>[
            Expanded(
              flex: flexInts[index * 2],
              child: SizedBox(
                  height: 200,
                  child: Padding(
                      // Change to AnimatedPadding in final version
                      padding: EdgeInsets.all(8.0),
                      child: Stack(children: <Widget>[
                        CustomCard(venue: venues[index * 2]),
                        if (showInfoOverlay) InfoOverlay(),
                      ]))),
            ),
            if (index * 2 + 1 < venues.length)
              Expanded(
                  flex: flexInts[index * 2 + 1],
                  child: SizedBox(
                      height: 200,
                      child: Padding(
                          // Change to AnimatedPadding in final version
                          padding: EdgeInsets.all(8.0),
                          child: Stack(children: <Widget>[
                            CustomCard(venue: venues[index * 2 + 1]),
                            if (showInfoOverlay) InfoOverlay(),
                          ]))))
          ],
        );
      },
    );
  }
}
