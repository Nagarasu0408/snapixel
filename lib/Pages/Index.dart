import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Home.dart';
import 'ProfilePage.dart';
import 'Search.dart';
import 'Trends.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var index = 0;

  final screens = [
    const Home(),
    Search(),
    const Trending(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.1),
      body: screens[index],
      bottomNavigationBar: index != 2
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child:
              GNav(
                padding: const EdgeInsets.all(15),
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                activeColor: Colors.black,
                gap: 10,
                tabBackgroundColor: Colors.orange.shade50,
                tabs: [
                  GButton(
                    icon: Icons.home_outlined,
                    text: 'Home',
                    onPressed: () {
                      _setIndex(0);
                    },
                    iconColor: Colors.white,
                  ),
                  GButton(
                    icon: Icons.search_outlined,
                    text: 'Search',
                    onPressed: () {
                      _setIndex(1);
                    },
                    iconColor: Colors.white,
                  ),
                  GButton(
                    icon: Icons.local_fire_department_outlined,
                    text: 'Feed',
                    onPressed: () {
                      _setIndex(2);
                    },
                    iconColor: Colors.white,
                  ),
                  GButton(
                    icon: Icons.person_3_outlined,
                    text: 'Profile',
                    onPressed: () {
                      _setIndex(3);
                    },
                    iconColor: Colors.white,
                  ),
                ],
              ),
            )
          : null,
    );
  }

  void _setIndex(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }
}
