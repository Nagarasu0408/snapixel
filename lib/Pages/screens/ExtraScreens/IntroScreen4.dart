import 'package:flutter/material.dart';
import 'package:snapixel/Components/custom_button.dart';
import 'package:snapixel/Pages/LoginPage.dart';


class Intro4 extends StatelessWidget {
  const Intro4({super.key});

  void Login(context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
    child: Column(
      children: [
        const SizedBox(height: 50,),
        Image.asset("assets/logo1.png",height: 200),
        const SizedBox(height: 50,),

      ],
    ),
    );
  }
}
