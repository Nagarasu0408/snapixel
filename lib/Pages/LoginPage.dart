import 'package:flutter/material.dart';
import 'RegisterPage.dart';
import 'package:snapixel/Components/custom_TextFiled.dart';
import 'package:snapixel/Components/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void onTap() {
    print("Hello");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 400,
          color: Colors.white70,
          height: 600,
          margin: const EdgeInsets.only(
            left: 20,
            top: 150,
            right: 20,
            bottom: 40,
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: Row(
                    children: [
                      Text(
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
                                  builder: (context) => RegisterPage()));
                        },
                      )
                    ],
                  ),
                ),
                CustomTextFiled(hintText: "Username", obscureText: false),
                CustomTextFiled(hintText: "Password", obscureText: true),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Center(child: CustomButton(buttonName: "Continue")),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 1,
                              width: 120,
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
                              width: 120,
                              color: Colors.black26,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Continue with Google",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, right: 8.0, bottom: 8.0, left: 10.0),
                          child:
                              Image.asset("assets/google-icon-svgrepo-com.png"),
                        ),
                      ],
                    ),
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(color: Colors.black26)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Continue with Apple",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, right: 8.0, bottom: 8.0, left: 10.0),
                          child:
                              Image.asset("assets/apple-173-svgrepo-com.png"),
                        ),
                      ],
                    ),
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(color: Colors.black26)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Continue with Facebook",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, right: 8.0, bottom: 8.0, left: 10.0),
                          child: Image.asset(
                              "assets/facebook-color-svgrepo-com.png"),
                        ),
                      ],
                    ),
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(color: Colors.black26)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
