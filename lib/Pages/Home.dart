import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:snapixel/Components/PopularUsers.dart';

import '../Components/Discovers.dart';
import '../Components/hashTag.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body:const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            Stack(
              children:[ SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HashTag(),
                    HashTag(),
                    HashTag(),
                    HashTag(),
                    HashTag(),
                  ],
                ),
              ),
        ]
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PopularUsers(ImageUrl: "https://cdn.thecollector.com/wp-content/uploads/2023/05/tips-to-become-a-great-photographer.jpg"),
                  SizedBox(width: 90,),
                  PopularUsers(ImageUrl: "https://images.unsplash.com/photo-1607462109225-6b64ae2dd3cb?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHBob3RvZ3JhcGh5fGVufDB8fDB8fHww")
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Discover",style: TextStyle(fontSize: 30),),
                  Icon(Icons.arrow_forward_ios_rounded,size: 30,)
                ],
              ),
            ),
            Discover(imageUrl: 'https://s.studiobinder.com/wp-content/uploads/2021/02/Creative-Photography-Ideas-Techniques-To-Get-You-Inspired-StudioBinder.jpeg'),
            Discover(imageUrl: 'https://wildlifesos.org/wp-content/uploads/2023/06/IMG_5193-1920x900.jpg'),

          ],
        ),
      ),
        bottomNavigationBar:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: GNav(
            padding: const EdgeInsets.all(20),
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            activeColor: Colors.purple,
            gap: 10,
            tabBackgroundColor: Colors.purple.shade50,
            tabs: const [
              GButton(icon:Icons.home_outlined,text: 'Home',),
              GButton(icon:Icons.search_outlined,text: 'Search',),
              GButton(icon:Icons.local_fire_department_outlined,text: 'Feed',),
              GButton(icon:Icons.person_3_outlined,text: 'Profile',),
            ],
          ),
        ),
    );
  }
}
