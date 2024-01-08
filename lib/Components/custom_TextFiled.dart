import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  final String hintText;
  final bool obscureText;
   const CustomTextFiled({super.key, required this.hintText,required this.obscureText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      alignment: Alignment.center,
      height: 50,
      decoration: BoxDecoration(border: Border.all(color:Colors.black),borderRadius: BorderRadius.circular(20)),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText:hintText,hintStyle: TextStyle(fontSize:20 ),
        ),
      ),
    );
  }
}
