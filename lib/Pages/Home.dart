import 'package:flutter/material.dart';
import 'package:snapixel/Components/PopularUsers.dart';

import '../Components/Discovers.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 0,),
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
    );
  }
}