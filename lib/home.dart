// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/bottom_nav.dart';
import 'package:bmi_calculator/noti.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final width = TextEditingController();

  final hieght = TextEditingController();
  int _currentIndex = 0;
  double calculateBMI(double weight, double height) {
    return weight / (height * height);
  }

  void calculate() {
    double weight;
    double height;
    try {
      weight = double.parse(width.text);
      height = double.parse(hieght.text);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter valid numbers')),
      );
      return;
    }

    if (weight <= 0 || height <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter positive numbers')),
      );
      return;
    }

    double bmi = calculateBMI(weight, height);

    String bmiStatus;
    if (bmi < 18.5) {
      bmiStatus = 'Underweight';
    } else if (bmi >= 18.5 && bmi < 25) {
      bmiStatus = 'Normal weight';
    } else if (bmi >= 25 && bmi < 30) {
      bmiStatus = 'Overweight';
    } else {
      bmiStatus = 'Obese';
    }
    Expanded(child: Text('$bmiStatus'));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        action: SnackBarAction(
            label: 'Test Again',
            onPressed: () {
              setState(() {
                width.text == '';
                hieght.text == '';
              });
            }),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Your BMI is: $bmi'),
            SizedBox(height: 8),
            Text('BMI Status: $bmiStatus'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C134F),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 160,
                      width: 338,
                      decoration: BoxDecoration(
                        color: Color(0xff1D267D),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.calculate_outlined,
                                size: 50,
                                color: Color(0xffD4ADFC),
                              ),
                              Text(
                                'BMI',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 90,
              ),
              Text(
                'We Calculate You 🤙',
                style: GoogleFonts.poppins(color: Colors.white),
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: 82,
                          height: 97,
                          child: TextField(
                            controller: width,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                labelText: '(kg)',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                fillColor: Color(0xff5C65BC),
                                filled: true),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Color(0xffD4ADFC),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Text(
                                'W',
                                textAlign: TextAlign.center,
                              )),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          width: 82,
                          height: 97,
                          child: TextField(
                            controller: hieght,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                labelText: '(cm)',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                fillColor: Color(0xff7A80BC),
                                filled: true),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Color(0xffD4ADFC),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Text(
                                'H',
                                textAlign: TextAlign.center,
                              )),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 191,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffB282E3)),
                    ),
                    onPressed: () {
                      setState(() {
                        calculate();
                      });
                    },
                    child: Text(
                      'CALCULATE',
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'BMI Status:${width.text} ',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
