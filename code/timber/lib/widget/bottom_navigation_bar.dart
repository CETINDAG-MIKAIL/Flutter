import 'package:flutter/material.dart';

import '../style/colors.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  // Variable pour garder l'index sélectionné
  int _selectedIndex = 0;

  // Fonction appelée lorsque l'utilisateur appuie sur un élément de la barre de navigation
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Met à jour l'index sélectionné
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex, // L'index actuellement sélectionné
      onTap: _onItemTapped, // Appel de la fonction quand un item est tapé
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.group, color: kIconColor), // Changez les couleurs si nécessaire
          label: "Friends",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: kIconColor),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: kIconColor),
          label: "Profile",
        ),
      ],
    );
  }
}
