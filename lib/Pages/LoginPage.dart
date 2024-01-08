import 'package:flutter/material.dart';
import 'package:snapixel/Components/custom_TextFiled.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          CustomTextFiled(hintText: 'User Name', obscureText: false),
          CustomTextFiled(hintText: 'Password', obscureText: true),
        ],
      ),
    );
  }
}
