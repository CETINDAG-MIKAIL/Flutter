import 'package:flutter/material.dart';
import 'package:timber/screens/home.dart';
import 'package:timber/style/colors.dart';

import '../widget/bottom_navigation_bar.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          // Naviguer vers l'écran Home lorsqu'on appuie n'importe où sur l'écran
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()), // Accède à l'écran Home
          );
        },
        child: Container(
          color: kTertiaryColor, // Optionnel, vous pouvez définir une couleur de fond si nécessaire
          child: Container(
            alignment: Alignment.center,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome Screen"),
                  Text("Click on the screen")
                ],
              )
          )
        ),
      ),
    );
  }
}