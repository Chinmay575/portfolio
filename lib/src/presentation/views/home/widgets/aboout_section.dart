
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class AboutSection extends StatelessWidget {
  AboutSection({super.key});
  late double deviceHeight, deviceWidth;

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: deviceHeight * 0.05,
        horizontal: deviceWidth * 0.05,
      ),
      padding: const EdgeInsets.symmetric(),
      height: deviceHeight * 0.5,
      width: deviceWidth,
      // color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Namaste",
                style: GoogleFonts.poppins(
                  fontSize: 24.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "I'm Chinmay Singh Modak",
                style: GoogleFonts.poppins(
                  fontSize: 20.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: deviceWidth * 0.5,
                child: Text(
                  "Hey, I'm a Flutter developer and AI/ML enthusiast who loves building smooth and efficient cross-platform apps. While I focus on the frontend, I'm also familiar with Node.js and Django and can handle backend when needed. Always exploring new tech and finding ways to integrate AI into exciting projects! 🚀",
                  style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      FontAwesome.github_brand,
                      size: 35.sp,
                      color: Colors.black,
                    ),
                    hoverColor: Colors.blue,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesome.linkedin_brand,
                      size: 35.sp,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesome.instagram_brand,
                      size: 35.sp,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesome.facebook_brand,
                      size: 35.sp,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              NeuTextButton(
                enableAnimation: true,
                borderRadius: BorderRadius.circular(2),
                buttonWidth: 160.w,
                onPressed: () {},
                text: Text(
                  "Get in Touch",
                  style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: deviceHeight * 0.35,
            width: deviceWidth * 0.25,
            // color: Colors.red,
            child: Image.asset(
              "assets/images/profile-pic.png",
            ),
          ),
        ],
      ),
    );
  }
}
