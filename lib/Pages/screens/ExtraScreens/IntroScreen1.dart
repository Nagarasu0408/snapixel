import 'package:flutter/material.dart';

import 'Components/GalleryImage.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Align(),
          SizedBox(
            height: 100,
          ),
          GalleryImage(),
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Create your own library",
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
              'QPixel allows every users to upload their high quality photographs and let them to create their own library.',
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
              'Every masterpiece of the creators will be considered to be displayed in the user library in front of the world.',
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
