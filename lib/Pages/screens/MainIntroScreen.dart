import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:snapixel/Pages/screens/ExtraScreens/IntroScreen1.dart';
import 'package:snapixel/Pages/screens/ExtraScreens/IntroScreen2.dart';
import 'package:snapixel/Pages/screens/ExtraScreens/IntroScreen3.dart';

import '../LoginPage.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController pageController = PageController();
  var _EndPage = false;
  var _FirstPage = false;
  void Login(context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                _FirstPage = (index == 1);
                _EndPage = (index == 2);
              });
            },
            children: const [
              Intro1(),
              Intro2(),
              Intro3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.9),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _FirstPage || _EndPage
                    ? Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue.shade50),
                        child: GestureDetector(
                          child: const Icon(
                            Icons.arrow_back_outlined,
                            size: 30,
                          ),
                          onTap: () => pageController.previousPage(
                              duration: const Duration(microseconds: 100),
                              curve: Curves.bounceIn),
                        ),
                      )
                    : Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue.shade50),
                        child: GestureDetector(
                          child: Text('Skip'),
                          onTap: () => pageController.jumpToPage(3),
                        ),
                      ),
                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                ),
                _EndPage
                    ? Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue.shade50),
                        child: GestureDetector(
                          onTap: ()=>Login(context),
                          child: const Text('Join'),
                        ),
                      )
                    : Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue.shade50),
                        child: GestureDetector(
                          child: const Icon(
                            Icons.arrow_forward,
                            size: 30,
                          ),
                          onTap: () => pageController.nextPage(
                              duration: const Duration(microseconds: 100),
                              curve: Curves.bounceIn),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
