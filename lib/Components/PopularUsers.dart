import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:snapixel/Components/Discovers.dart';
import 'package:snapixel/Components/hashTag.dart';

class PopularUsers extends StatelessWidget {
  final String ImageUrl;

   const PopularUsers({super.key,required this.ImageUrl});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Stack(
              alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 550,
                      width: 380,
                      child: ImageFiltered(imageFilter: ImageFilter.blur(sigmaX: 20,sigmaY: 30),
                      child: Image.network(ImageUrl,fit: BoxFit.cover,)),),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40,vertical: 100),
                    height: 250,
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: NetworkImage(ImageUrl),fit: BoxFit.cover),),
                  ),

                ],
            ),
          ],
        ),
      ],
    );
  }
}
