import 'package:flutter/material.dart';

import '../widget/bottom_navigation_bar.dart';

class Friends extends StatelessWidget {
  const Friends({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text("friends screen"),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
