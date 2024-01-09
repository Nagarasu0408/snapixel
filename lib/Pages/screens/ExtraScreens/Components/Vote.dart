import 'package:flutter/material.dart';

class ImageVoting extends StatelessWidget {
  const ImageVoting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/IntroScreen_Image/Voting_Character.webp'),fit: BoxFit.cover),borderRadius: BorderRadius.only(topLeft: Radius.circular(100),topRight: Radius.elliptical(190, 100),bottomLeft: Radius.circular(200),bottomRight: Radius.elliptical(100, 170)),color: Colors.blue.shade50),
    );
  }
}