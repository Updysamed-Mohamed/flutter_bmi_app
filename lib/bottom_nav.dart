// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/about.dart';
import 'package:bmi_calculator/home.dart';
import 'package:bmi_calculator/noti.dart';
import 'package:bmi_calculator/profile.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _currentIndex = 0;
  List pages = [HomePage(), notification(), profile(), About()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C134F),
      body: pages[_currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: BottomNavigationBar(
            backgroundColor: Color(0xff000000),
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            // type: ,
            selectedItemColor: Color(0xffD4ADFC),
            unselectedItemColor: Colors.grey,

            selectedFontSize: 12,

            unselectedFontSize: 12,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                  label: 'About', icon: Icon(Icons.adobe_outlined))
            ],
          ),
        ),
      ),
    );
  }
}
