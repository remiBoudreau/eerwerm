import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key, required this.venue, required this.infoNavIn});
  final Map<String, dynamic> venue;
  final int infoNavIn;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment(0.0, -1.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
            ),
            margin: EdgeInsets.only(
                top: 50), // Adjust this value to move the Card up
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 24.0, right: 24.0, bottom: 24.0, top: 176.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(venue['longDescription']),
                ],
              ),
            ),
          ),
        ),
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          margin: EdgeInsets.zero,
          child: Container(
            height: 200, // Adjust the height of the image
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://via.placeholder.com/400x200', // Placeholder image URL
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
// Create Card looking item for overlay
