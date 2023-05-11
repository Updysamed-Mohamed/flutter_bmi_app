// ignore_for_file: camel_case_types, prefer_const_constructors

// ignore: implementation_imports
import 'package:bmi_calculator/bottom_nav.dart';
import 'package:flutter/material.dart';

import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

class Into_screen extends StatelessWidget {
  Into_screen({super.key});
  final List<Introduction> introList = [
    Introduction(
        imageUrl: 'images/1.png',
        title: '',
        subTitle: 'We Help You For Your Health '),
    Introduction(
        imageUrl: 'images/2.png',
        title: '',
        subTitle: 'Record Your Daily Goals'),
    Introduction(
        imageUrl: 'images/3.png', title: '', subTitle: 'Life healthy with us'),
  ];
  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: Color(0xff0C134F),
      foregroundColor: Color.fromARGB(255, 255, 255, 255),
      skipTextStyle: TextStyle(color: Colors.amberAccent),
      onTapSkipButton: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => CustomBottomNavBar()));
      },
      introductionList: introList,
    );
  }
}
