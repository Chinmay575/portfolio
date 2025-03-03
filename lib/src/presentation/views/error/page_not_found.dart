import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:portfolio/src/utils/routes.dart';

class UrlNotFoundPage extends StatelessWidget {
  const UrlNotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: 1080,
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/images/wmremove-transformed.jpeg",
              height: 500,
              width: 500,
              fit: BoxFit.contain,
              colorBlendMode: BlendMode.srcIn,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Oops, page not found",
              style: GoogleFonts.poppins(
                fontSize: 50,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            NeuTextButton(
              buttonHeight: 48,
              buttonWidth: 240,
              borderRadius: BorderRadius.circular(10),
              enableAnimation: true,
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.home + "/Chinmay575");
              },
              text: Text(
                "Back to Home Page",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
