import 'package:flutter/material.dart';
import 'package:snapixel/Components/custom_TextFiled.dart';
import 'package:snapixel/Components/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void onTap(){
    print("Hello");
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: TextStyle(fontSize: 65, fontWeight: FontWeight.w600),
          ),
          CustomTextFiled(hintText: 'User Name', obscureText: false),
          CustomTextFiled(hintText: 'Password', obscureText: true),
          CustomButton(buttonName: "Login", onTap:() {
            onTap();
          },)
        ],
      ),
    );
  }
}
