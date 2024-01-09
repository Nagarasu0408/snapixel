import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  final String imageUrl;

  const Discover({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 350,
      margin:const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      decoration: BoxDecoration(
        image:
            DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 3,
            spreadRadius: 1.0,
          ),
        ]
      ),
    );
  }
}
