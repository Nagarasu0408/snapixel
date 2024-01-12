import 'package:flutter/material.dart';

import 'Components/GalleryImage.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 90,
          ),
          const GalleryImage(),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Create your own library",
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.orange.shade200,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
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
                  height: 80,
                  width: 300,
                  child: Text(
                    'QPixel allows every users to upload their high quality photographs and let them to create their own library.',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Assistant',
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                  height: 80,
                  width: 300,
                  child: Text(
                    'Every masterpiece of the creators will be considered to be displayed in the user library in front of the world.',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Assistant',
                        color: Colors.white,
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
