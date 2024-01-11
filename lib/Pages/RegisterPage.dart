import 'dart:math';

import 'package:flutter/material.dart';
import 'package:snapixel/Components/custom_TextFiled.dart';
import 'package:snapixel/Components/custom_button.dart';
import 'package:snapixel/Pages/LoginPage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var mRandomBackground = [
    "https://images.pexels.com/photos/380337/pexels-photo-380337.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/235986/pexels-photo-235986.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/1939485/pexels-photo-1939485.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/2310713/pexels-photo-2310713.jpeg?auto=compress&cs=tinysrgb&w=400"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              mRandomBackground[Random().nextInt(mRandomBackground.length)]
                  .toString(),
              scale: 1.0),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black12,
              Colors.black12,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              height: 700,
              margin: const EdgeInsets.only(
                left: 20,
                top: 100,
                right: 20,
                bottom: 40,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.black38,
                  )
                ],
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 260.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("assets/logo1.png"),
                          )),
                          height: 100,
                        ),
                      ),
                      const Text(
                        'Create an account',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 40.0, right: 8.0),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(
                                    "assets/google-icon-svgrepo-com.png"),
                              ),
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: Colors.black26)),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 40.0, right: 8.0),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(
                                    "assets/apple-173-svgrepo-com.png"),
                              ),
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: Colors.black26)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(
                                    "assets/facebook-color-svgrepo-com.png"),
                              ),
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: Colors.black26)),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Center(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 1,
                                    width: 142,
                                    color: Colors.black26,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text(
                                      'Or',
                                      style: TextStyle(
                                        color: Colors.black26,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 1,
                                    width: 142,
                                    color: Colors.black26,
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                            'Already have an account? ',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          GestureDetector(
                            child: Text(
                              'Sign in',
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
                                      builder: (context) => const LoginPage()));
                            },
                          )
                        ],
                      ),
                      const CustomTextFiled(
                          hintText: "Username / Email", obscureText: false),
                      const CustomTextFiled(
                          hintText: "Password", obscureText: true),
                      const CustomTextFiled(
                          hintText: "Confirm Password", obscureText: true),
                      const Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child:
                            Center(child: CustomButton(buttonName: "Continue")),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
