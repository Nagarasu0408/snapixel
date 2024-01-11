import 'package:flutter/material.dart';
import 'package:snapixel/Pages/screens/ExtraScreens/Components/Vote.dart';

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          ImageVoting(),
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Compete with the world",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Assistant',
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.0, right: 20.0),
            child: Text(
              'Any creators can participate in the monthly contest hosted in QPixel and the credits will be given based on their ratings.',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Assistant',
                  fontWeight: FontWeight.w800),
                  textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.0, right: 20.0, top: 10.0),
            child: Text(
                'The ratings for a creator can be determined by the number of votes that a photograph got by all other users globally.',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Assistant',
                    fontWeight: FontWeight.w800),
                    textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
