import 'package:flutter/material.dart';

import '../widget/bottom_navigation_bar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Text("profile screen"),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
