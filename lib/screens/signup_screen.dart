import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/widget/custom_elevated_button.dart';
import '../core/widget/custom_text_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121223),
      body: Column(
        children: [
          Stack(
            children: [
              SvgPicture.asset(
                "assets/icons/Ellipse 1005.svg",
                color: Color(0xffFAFAFA),
              ),
              Positioned(
                top: 50,
                left: 20,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 25,
                      color: Color(0xff121223),
                    ),
                  ),
                ),
              ),

              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 100),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: .bold,
                      ),
                    ),
                    Text(
                      "Please sign up to get started",
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
          SizedBox(height: 80),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    CustomTextFiled(
                      false,
                      name: "Name",
                      icon: null,
                      hint: "Mariam Negm",
                    ),
                    SizedBox(height: 18),
                    CustomTextFiled(
                      false,
                      name: "Email",
                      icon: Icons.email,
                      hint: "examble@gmail.com",
                    ),
                    SizedBox(height: 18),
                    CustomTextFiled(
                      true,
                      name: "Password",
                      icon: Icons.visibility,
                      hint: "************",
                    ),
                    SizedBox(height: 18),
                    CustomTextFiled(
                      true,
                      name: "RE-Password",
                      icon: Icons.visibility,
                      hint: "************",
                    ),
                    SizedBox(height: 28),
                    CustomElevatedButton(name: "Sign UP"),
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
