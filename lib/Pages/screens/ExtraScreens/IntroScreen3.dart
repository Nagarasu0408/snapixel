import 'package:flutter/material.dart';
import 'package:snapixel/Pages/screens/ExtraScreens/Components/Explore.dart';

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Explore(),
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Expand your community",
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
              'Grow your fanbase by showcasing your masterpieces in the contest and build your community stronger and healthier.',
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
              'Follow your favorite photographers profile to like, share, comment and download their content to your device.',
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
