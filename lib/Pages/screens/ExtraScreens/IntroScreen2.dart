import 'package:flutter/material.dart';
import 'package:snapixel/Pages/screens/ExtraScreens/Components/Vote.dart';

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child:  Column(
        children: [
          SizedBox(height: 100,),
          ImageVoting(),
          SizedBox(height: 50,),
          Padding(
            padding: EdgeInsets.only(right: 280),
            child: Text("Title",style: TextStyle(fontSize: 30,fontFamily: 'Assistant',fontWeight: FontWeight.w900),),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text('The Asgardians or Gods of Asgard are a fictional humanoid race of gods appearing in American comic books published by Marvel Comics. Some are taken from mythology while others are original creations.',style: TextStyle(fontSize: 15,fontFamily: 'Assistant',fontWeight: FontWeight.w800)),
          )
        ],
      ),
    );
  }
}
