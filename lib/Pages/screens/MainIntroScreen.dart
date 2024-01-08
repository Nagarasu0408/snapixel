import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../LoginPage.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController pageController = PageController();
  var _EndPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                _EndPage = (index == 2);
              });
            },
            children: [
              Container(
                color: Colors.pink,
              ),
              Container(
                color: Colors.amber,
              ),
              Container(
                color: Colors.deepPurple,
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.7),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _EndPage
                    ? GestureDetector(
                        child:const Icon(
                          Icons.arrow_back_outlined,
                        ),
                        onTap: () => pageController.previousPage(
                            duration:const Duration(microseconds: 100),
                            curve: Curves.bounceIn),
                )
                    : GestureDetector(
                        child: Text("skip"),
                        onTap: () => pageController.jumpToPage(2),),
                 SmoothPageIndicator(
                   controller: pageController,
                   count: 3,
                 ),
                _EndPage?GestureDetector(
                  child:Text('Done'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()),);
                  },
                ):GestureDetector(
                  child: const Icon(Icons.arrow_forward),
                  onTap: () => pageController.nextPage(
                      duration:const  Duration(microseconds: 100),
                      curve: Curves.bounceIn),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
