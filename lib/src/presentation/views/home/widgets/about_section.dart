import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, size) {
      return Container(
        margin: EdgeInsets.only(
          left: (size.maxWidth < 1000) ? 50 : 100,
          right: (size.maxWidth < 1000) ? 50 : 100,
          bottom: 50,
        ),
        child: Wrap(
          alignment: WrapAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _profilePic(),
            const SizedBox(
              // height: 40,
              width: 40,
            ),
            _aboutText(),
          ],
        ),
      );
    });
  }
}

Widget _aboutText() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "Namaste",
        style: GoogleFonts.poppins(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Text(
        "I'm Chinmay Singh Modak",
        style: GoogleFonts.poppins(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Container(
        constraints: const BoxConstraints(
          maxWidth: 900,
        ),
        child: Text(
          "I'm a Flutter developer and AI/ML enthusiast who loves building smooth and efficient cross-platform apps. While I focus on the frontend, I'm also familiar with Node.js and Django and can handle backend when needed. Always exploring new tech and finding ways to integrate AI into exciting projects! 🚀",
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Wrap(
        children: [
          IconButton(
            icon: const Icon(
              FontAwesome.github_brand,
              size: 35,
              color: Colors.white,
            ),
            onPressed: () {
              launchUrl(Uri.parse("https://github.com/Chinmay575/"));
            },
          ),
          IconButton(
            icon: const Icon(
              FontAwesome.linkedin_brand,
              size: 35,
              color: Colors.white,
            ),
            onPressed: () {
              launchUrl(Uri.parse(
                  "https://www.linkedin.com/in/chinmay-singh-modak/"));
            },
          ),
          IconButton(
            icon: const Icon(
              FontAwesome.instagram_brand,
              size: 35,
              color: Colors.white,
            ),
            onPressed: () {
              launchUrl(
                  Uri.parse("https://www.instagram.com/chinmay.singhmodak/"));
            },
          ),
          IconButton(
            icon: const Icon(
              FontAwesome.facebook_brand,
              size: 35,
              color: Colors.white,
            ),
            onPressed: () {
              launchUrl(
                  Uri.parse("https://www.facebook.com/chinmay.singhmodak/"));
            },
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      NeuTextButton(
        enableAnimation: true,
        borderRadius: BorderRadius.circular(10),
        buttonWidth: 160,
        onPressed: () {},
        text: Text(
          "Get in Touch",
          style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
        ),
      ),
    ],
  );
}

Widget _profilePic() {
  return SizedBox(
    height: 400,
    width: 400,
    // color: Colors.red,
    child: Image.asset(
      "assets/images/profile-pic.png",
      fit: BoxFit.contain,
    ),
  );
}
