import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task2/core/widget/custom_elevated_button.dart';
import 'package:task2/screens/signup_screen.dart';

import '../core/widget/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xff121223)),
              child: Stack(
                children: [
                  SvgPicture.asset(
                    "assets/icons/Ellipse 1005.svg",
                    color: Color(0xffFAFAFA),
                  ),

                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Log In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: .bold,
                          ),
                        ),
                        Text(
                          "Please sign in to your existing account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: .w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: SvgPicture.asset(
                      "assets/icons/Vector 142.svg",
                      color: Color(0xff3B2323),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            top: 275,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: .spaceAround,
                  children: [
                    CustomTextFiled(
                      name: 'Email',
                      icon: Icons.email,
                      hint: 'example@gmail.com',
                      false,
                    ),
                    CustomTextFiled(
                      name: 'Password',
                      icon: Icons.visibility,
                      hint: '***********',
                      true,
                    ),
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        Text(
                          "Remember me",
                          style: TextStyle(
                            color: Color(0xff121223),
                            fontSize: 18,
                            fontWeight: .w500,
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget Password",
                            style: TextStyle(
                              color: Color(0xffFF7622),
                              fontSize: 18,
                              fontWeight: .w500,
                            ),
                          ),
                        ),
                      ],
                    ),

                    CustomElevatedButton(name: 'Log In'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Color(0xff121223),
                            fontSize: 16,
                            fontWeight: .w500,
                          ),
                        ),

                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Color(0xffFF7622),
                              fontSize: 18,
                              fontWeight: .w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 25,
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 2,
                            color: Color(0xff121223),
                          ),
                        ),
                        Text(
                          "OR",
                          style: TextStyle(
                            color: Color(0xff121223),
                            fontSize: 16,
                            fontWeight: .w500,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 2,
                            color: Color(0xff121223),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: .center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.facebook,
                            size: 90,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 20),

                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.twitter,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50),
                          ),

                          child: IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.apple,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
