import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0C134F),
        body: Column(children: [
          Image.asset('images/not.gif'),
          Text(
            'No Notifications Here 😒',
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ]));
  }
}
