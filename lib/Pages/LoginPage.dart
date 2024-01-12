import 'dart:math';

import 'package:flutter/material.dart';
import 'Index.dart';
import 'RegisterPage.dart';
import 'package:snapixel/Components/custom_TextFiled.dart';
import 'package:snapixel/Components/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var mRandomBackground = [
    "https://images.pexels.com/photos/380337/pexels-photo-380337.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/235986/pexels-photo-235986.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/1939485/pexels-photo-1939485.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/2310713/pexels-photo-2310713.jpeg?auto=compress&cs=tinysrgb&w=400"
  ];

  void goToHome(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BottomNavigation()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(mRandomBackground[Random().nextInt(mRandomBackground.length)].toString(), scale: 1.0),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        alignment: Alignment(0,0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black45,
              Colors.black45,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(

              alignment: Alignment(0,0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.black38,
                  )
                ],
              ),
              margin:const EdgeInsets.symmetric(horizontal: 15,vertical:100),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 130,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/logo1.png"),fit: BoxFit.cover
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 30.0, bottom: 20.0),
                      child: Text(
                        "Sign up with email",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          'New user? ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        GestureDetector(
                          child: Text(
                            'Create an account',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.lightBlue[700],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const RegisterPage()));
                          },
                        )
                      ],
                    ),
                    const CustomTextFiled(
                        hintText: "Username", obscureText: false),
                    const CustomTextFiled(
                        hintText: "Password", obscureText: true),
                     GestureDetector(
                       onTap: ()=>goToHome(context),
                       child:const Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: Center(
                            child: CustomButton(
                              buttonName: "Continue",
                            ),),
                                           ),
                     ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Center(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: .6,
                                  width: 140,
                                  color: Colors.black26,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    'Or',
                                    style: TextStyle(
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: .6,
                                  width: 140,
                                  color: Colors.black26,
                                ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding:const  EdgeInsets.all(10.0),
                                  child: Image.asset(
                                      "assets/google-icon-svgrepo-com.png"),
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(color: Colors.black26)),
                                ),
                                const SizedBox(width: 10,),
                                Container(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                      "assets/apple-173-svgrepo-com.png"),
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(color: Colors.black26)),
                                ),
                                const SizedBox(width: 10,),
                                Container(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                      "assets/facebook-color-svgrepo-com.png"),
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(color: Colors.black26)),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}