import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix/view/home_screen/home_screen.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';
import 'package:netflix/utils/image_constant/image_constant.dart';
import 'package:netflix/view/username_screen/username_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => UserNameScreen()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(),
          Center(
            child: Container(
                height: 56, width: 270, child: Image.asset(ImageConstant.logo)),
          ),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
    );
  }
}
