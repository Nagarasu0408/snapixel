import 'package:flutter/material.dart';
import 'package:snapixel/Pages/screens/ExtraScreens/Components/Vote.dart';

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 90,
          ),
          const ImageVoting(),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Compete with the world",
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.orange.shade200,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.radio_button_on,
                  color: Colors.pink.shade300,
                ),
                const SizedBox(
                  width: 10,
                ),
                const SizedBox(
                  height: 110,
                  width: 300,
                  child: Text(
                    'Any creators can participate in the monthly contest hosted in QPixel and the credits will be given based on their ratings.',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: 'Assistant',
                        fontWeight: FontWeight.w800),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.radio_button_on,
                  color: Colors.pink.shade300,
                ),
                const SizedBox(
                  width: 10,
                ),
                const SizedBox(
                  height: 110,
                  width: 300,
                  child: Text(
                    'The ratings for a creator can be determined by the number of votes that a photograph got by all other users globally.',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: 'Assistant',
                        fontWeight: FontWeight.w800),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
