import 'package:flutter/material.dart';
import '../screens/friends.dart'; // Import de la page Friends
import '../screens/profile.dart'; // Import de la page Profile
import '../screens/homeScreen.dart'; // Import de la page Profile
import '../widgets/bottom_navigation_bar.dart'; // Import de la barre de navigation

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Index actuel de la navigation
  int _currentIndex = 1; // Home par défaut (index 1)

  // Liste des pages
  final List<Widget> _pages = [
    const Friends(), // Page Friends
    const HomeScreen(), // Contenu principal de Home
    const Profile(), // Page Profile
  ];

  // Fonction appelée pour mettre à jour l'index de la navigation
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Affiche la page correspondant à l'index
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: _currentIndex,
        onItemTapped: _onItemTapped, // Change l'index sélectionné
      ),
    );
  }
}
