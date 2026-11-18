import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer((Duration(seconds: 3)), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Stack(
        children: [
          SvgPicture.asset("assets/icons/Ellipse 1005.svg"),
          Center(child: SvgPicture.asset("assets/icons/Logo.svg")),

          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset("assets/icons/Ellipse 1006.svg"),
          ),
        ],
      ),
    );
  }
}
