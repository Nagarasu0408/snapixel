import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  final String hintText;
  final bool obscureText;

  const CustomTextFiled(
      {super.key, required this.hintText, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      height: 50,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black26),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black)
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent)
          ),
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.yellowAccent)
          ),
          focusedErrorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red)
          )
        ),
      ),
    );
  }
}
