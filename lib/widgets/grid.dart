import 'package:flutter/material.dart';
import 'package:eerwerm/widgets/custom_card.dart';
import 'package:eerwerm/widgets/data.dart';
// Globals
import 'package:eerwerm/providers/date.dart';
import 'package:eerwerm/providers/grid_nav_in.dart';
import 'package:eerwerm/providers/filters.dart';
import 'package:provider/provider.dart';

class Grid extends StatelessWidget {
  // final List<Map<String, dynamic>> venues;
  Grid({super.key}); //, required this.venues});

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
    final filters = Provider.of<FiltersProvider>(context).filters;
    final gridNavIn = Provider.of<GridNavInProvider>(context).gridNavIn;
    final date = Provider.of<DateProvider>(context).date;

    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
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
                    child: CustomCard(venue: venues[index * 2]),
                  )),
            ),
            if (index * 2 + 1 < venues.length)
              Expanded(
                  flex: flexInts[index * 2 + 1],
                  child: SizedBox(
                      height: 200,
                      child: Padding(
                          // Change to AnimatedPadding in final version
                          padding: EdgeInsets.all(8.0),
                          child: CustomCard(venue: venues[index * 2 + 1]))))
          ],
        );
      },
    );
  }
}
