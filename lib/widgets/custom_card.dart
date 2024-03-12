import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:eerwerm/screens/infoScreen.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.venue});
  final Map<String, dynamic> venue;

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(children: <Widget>[
          Expanded(
              child: Ink.image(
                  image: NetworkImage('https://via.placeholder.com/400x200'),
                  fit: BoxFit.cover,
                  child: InkWell(
                      splashColor: Colors.purple.withAlpha(15),
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: InfoScreen(venue: venue),
                          ),
                        );
                      }))),
          IgnorePointer(
              ignoring: true,
              child: Padding(
                padding: EdgeInsets.all(8.0), // Adjust the padding as needed
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        venue['venue_name'], // Your card title
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        venue['band_name'], // Your card subtitle
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ]),
              ))
        ]));
  }
}
