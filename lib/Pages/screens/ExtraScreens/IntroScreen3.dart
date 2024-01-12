import 'package:flutter/material.dart';
import 'package:snapixel/Pages/screens/ExtraScreens/Components/Explore.dart';

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 90,
          ),
          const Explore(),
          const SizedBox(
            height: 50,
          ),
           Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Expand your community",
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
                Icon(Icons.radio_button_on,color: Colors.pink.shade300,),
                const SizedBox(
                  width: 10,
                ),
               const  SizedBox(
                  height: 110,
                  width: 300,
                  child: Text(
                    'Grow your fanbase by showcasing your masterpieces in the contest and build your community stronger and healthier.',
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Icon(Icons.radio_button_on,color: Colors.pink.shade300,),
                const SizedBox(
                  width: 10,
                ),
                const SizedBox(
                  height: 100,
                  width: 300,
                  child: Text(
                    'Follow your favorite photographers profile to like, share, comment and download their content to your device.',
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
