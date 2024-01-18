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
            height: 25,
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
                  width: 300,
                  child: Text(
                    'Expolre amazing Contests created by other users.',
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
                  width: 300,
                  child: Text(
                    'Create your own customized contest, define the rules and target a specific community',
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
