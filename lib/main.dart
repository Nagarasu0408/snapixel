import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
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
      backgroundColor: Colors.white.withOpacity(0.1),
      splash:ColorFiltered(
        colorFilter:const  ColorFilter.mode(
          Colors.white,
          BlendMode.srcIn,
        ),
        child: Image.asset('assets/logo1.png'),
      ),
      splashIconSize: 150,
      splashTransition: SplashTransition.fadeTransition,
      centered: true,
      // nextScreen: UserProfile(),
      nextScreen: const MainScreen(),
      // nextScreen:const MyApp(),'
      // nextScreen: MyApp2(),
      // nextScreen: Trends(),
    );
  }
}
