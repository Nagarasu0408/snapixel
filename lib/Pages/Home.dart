import 'package:flutter/material.dart';
import 'package:snapixel/Components/Custom_SearchBar.dart';
import 'package:snapixel/Pages/UserProfile.dart';

import '../Components/PostItem.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(.1),
      body:const Center(child: Text("Home",style: TextStyle(color:Colors.white),),)
    );
  }
}
