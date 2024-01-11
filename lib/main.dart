import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:snapixel/Demo/dmeo.dart';
import 'package:snapixel/Demo/share.dart';
import 'package:snapixel/Pages/Trends.dart';
import 'package:snapixel/Pages/screens/MainIntroScreen.dart';

void main() {
  runApp((const MaterialApp(
    home: Qpixel(),
    debugShowCheckedModeBanner: false,
  )));
}

class Qpixel extends StatefulWidget {
  const Qpixel({super.key});

  @override
  State<Qpixel> createState() => _QpixelState();
}

class _QpixelState extends State<Qpixel> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/logo1.png',
      splashIconSize: 150,
      splashTransition: SplashTransition.fadeTransition,
      centered: true,
      nextScreen: const MainScreen(),
      // nextScreen:const MyApp(),'
      // nextScreen: MyApp2(),
      // nextScreen: Trends(),
    );
  }
}
