import 'package:flutter/material.dart';

import '../widget/bottom_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Text("home screen"),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
