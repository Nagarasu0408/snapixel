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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 400,
          height: 625,
          margin: const EdgeInsets.only(
            left: 20,
            top: 150,
            right: 20,
            bottom: 40,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white70,
          ),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Text(
                    'Create an account',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, right: 8.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:
                              Image.asset("assets/google-icon-svgrepo-com.png"),
                        ),
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.black26)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, right: 8.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:
                              Image.asset("assets/apple-173-svgrepo-com.png"),
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
                  padding: EdgeInsets.only(top: 30.0),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 1,
                              width: 150,
                              color: Colors.black26,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                'Or',
                                style: TextStyle(
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: 150,
                              color: Colors.black26,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                  child: Text("Sign up with email",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),),
                ),
                Row(
                  children: [
                    Text(
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
                                builder: (context) => LoginPage()));
                      },
                    )
                  ],
                ),
                CustomTextFiled(hintText: "Username / Email", obscureText: false),
                CustomTextFiled(hintText: "Password", obscureText: true),
                CustomTextFiled(hintText: "Confirm Password", obscureText: true),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Center(child: CustomButton(buttonName: "Continue", onTap: () {  },)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
