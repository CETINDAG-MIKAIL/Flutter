import 'package:flutter/material.dart';
import 'package:timber/style/colors.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text("welcome screen"),
      ),
    );
  }
}