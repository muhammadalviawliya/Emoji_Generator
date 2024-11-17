import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 200),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 150,
                width: 150,
                child: Image(image: AssetImage("Assets/Images/Emoji.png")),
              ),
              Text(
                'EMOJI',
                style: GoogleFonts.inclusiveSans(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 10),
              ),
              Text(
                "GENERATOR ",
                style: GoogleFonts.inclusiveSans(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 10),
              )
            ],
          ),
        ),
      )),
    );
  }
}
