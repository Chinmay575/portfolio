import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 50.h,
        horizontal: 100.w,
      ),
      height: 400.h,
      width: 1920.w,
      // color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Namaste",
                style: GoogleFonts.poppins(
                  fontSize: 24.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "I'm Chinmay Singh Modak",
                style: GoogleFonts.poppins(
                  fontSize: 20.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 900.w,
                child: Text(
                  "I'm a Flutter developer and AI/ML enthusiast who loves building smooth and efficient cross-platform apps. While I focus on the frontend, I'm also familiar with Node.js and Django and can handle backend when needed. Always exploring new tech and finding ways to integrate AI into exciting projects! 🚀",
                  style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    color: Colors.white,
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
                      color: Colors.white,
                    ),
                    onPressed: () {
                      launchUrl(Uri.parse("https://github.com/Chinmay575/"));
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesome.linkedin_brand,
                      size: 35.sp,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      launchUrl(Uri.parse(
                          "https://www.linkedin.com/in/chinmay-singh-modak/"));
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesome.instagram_brand,
                      size: 35.sp,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      launchUrl(Uri.parse(
                          "https://www.instagram.com/chinmay.singhmodak/"));
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesome.facebook_brand,
                      size: 35.sp,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      launchUrl(Uri.parse(
                          "https://www.facebook.com/chinmay.singhmodak/"));
                    },
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
                  style:
                      GoogleFonts.poppins(fontSize: 20.sp, color: Colors.white),
                ),
              ),
            ],
          ),
          Container(
            height: 400.h,
            width: 400.h,
            // color: Colors.red,
            child: Image.asset(
              "assets/images/profile-pic.png",
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
