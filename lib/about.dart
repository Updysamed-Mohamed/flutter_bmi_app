import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C134F),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  'This App is developed \nBy Ahmed Sweden',
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                child: Image.asset('images/gi.gif'),
              ))
        ],
      ),
    );
  }
}
