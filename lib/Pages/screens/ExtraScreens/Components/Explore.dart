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
            image: NetworkImage(
              "https://static.wixstatic.com/media/a1daf2_49094698da0547f187c7e6641fb4dd73~mv2.png/v1/fill/w_560,h_542,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/Internship%20Graphic-02.png",
            ),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
