import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        image:const DecorationImage(
            image: AssetImage(
              "assets/IntroScreen_Image/Social_Media_Character.webp",
            ),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
