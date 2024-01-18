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
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Post & Vote",
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
                    'Post high quality content to showcase your talent and build your fanbase.',
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
          const SizedBox(height: 20,),
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
                    'Vote for your favourite user and show your support.',
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
