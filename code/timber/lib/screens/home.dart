import 'package:flutter/material.dart';

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
      body:Center(child: Text("Home page !")),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Business'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'School'
            )
          ],
        onTap: (index) {
            _currentIndex = index;
        },
      ),
    );
  }
}
