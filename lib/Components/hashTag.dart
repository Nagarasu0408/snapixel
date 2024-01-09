import 'package:flutter/material.dart';

class HashTag extends StatelessWidget {
  const HashTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      height:50,
      decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.travel_explore,color: Colors.white,),
          Text("Travel",style: TextStyle(fontSize: 18,color: Colors.white),),
        ],
      ),
    );
  }
}
