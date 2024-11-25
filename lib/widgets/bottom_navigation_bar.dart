import 'package:flutter/material.dart';
import '../styles/colors.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int currentIndex; // Index actuel
  final Function(int) onItemTapped; // Callback pour changer de page

  const MyBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex, // L'index sélectionné
      onTap: onItemTapped, // Callback quand un item est tapé
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.group, color: kIconColor),
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
