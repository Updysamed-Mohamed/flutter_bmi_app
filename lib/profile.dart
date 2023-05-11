import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C134F),
      body: Center(
        child: Text(
          '🧑‍🏭SOON👩‍🏭',
          style: GoogleFonts.poppins(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
