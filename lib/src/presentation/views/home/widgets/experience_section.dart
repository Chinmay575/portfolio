
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class ExperienceSection extends StatelessWidget {
  ExperienceSection({super.key});
  late double deviceHeight, deviceWidth;

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: deviceWidth * 0.05,
            vertical: deviceHeight * 0.01,
          ),
          child: NeuContainer(
            height: deviceHeight * 0.1,
            width: deviceWidth,
            color: Colors.grey.shade800,
            child: Center(
              child: Text(
                "My Journey",
                style: GoogleFonts.poppins(
                  fontSize: 50.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: deviceWidth * 0.05,
            vertical: deviceHeight * 0.01,
          ),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text("Isourse Technologies"),
              const Text("Isourse Technologies"),
              const Text("Analysed"),
              const Text("Yoshops.com"),
            ],
          ),
        ),
      ],
    );
  }
}
