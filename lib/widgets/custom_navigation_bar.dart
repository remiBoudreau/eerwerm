import 'package:flutter/material.dart';

class GridNavigationBar extends StatelessWidget {
  const GridNavigationBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.music_note),
          label: 'Genre',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_city),
          label: 'Neighbourhood',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.food_bank_outlined),
          label: 'Cuisine',
        ),
      ],
      selectedItemColor: Colors.deepPurple[800],
    );
  }
}

class InfoNavigationBar extends StatelessWidget {
  const InfoNavigationBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'InfoOne',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'InfoTwo',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'InfoThree',
        ),
      ],
      selectedItemColor: Colors.deepPurple[800],
    );
  }
}
