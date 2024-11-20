import 'package:flutter/material.dart';

import '../widget/bottom_navigation_bar.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text("home screen"),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
