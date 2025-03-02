import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:portfolio/src/domain/models/project.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectSection extends StatelessWidget {
  ProjectSection({super.key});

  final List<Project> projects = [
    Project(
        name: "AgroGuru",
        description:
            "Deep learning based solution to agriculture based problems built using Flutter and Django, integrated with Gemini Vision Pro.",
        image: "",
        techStack: [
          "Flutter",
          "Deep Learning",
          "Gemini",
          "Django",
        ],
        code: "https://github.com/Chinmay575/agroguru"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 100.w,
            vertical: 50.h,
          ),
          child: NeuContainer(
            height: 100.h,
            width: 1920.w,
            color: Colors.grey.shade800,
            child: Center(
              child: Text(
                "Projects",
                style: GoogleFonts.poppins(
                  fontSize: 50.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Container(
          // color: Colors.red,
          height: 400.h,
          width: 1920.w,
          child: GridView.builder(
            padding: EdgeInsets.symmetric(
              horizontal: 100.w,
              vertical: 50.h,
            ),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 1920.w,
              crossAxisSpacing: 20.w,
              mainAxisSpacing: 20.w,
              childAspectRatio: 1,
              mainAxisExtent: 400.w,
            ),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: projects.length,
            itemBuilder: (_, i) {
              Project project = projects[i];
              return NeuCard(
                cardColor: Colors.grey.shade800,
                paddingData: EdgeInsets.all(8.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(),
                    // Image.network(project.image),
                    Text(
                      project.name,
                      style: GoogleFonts.poppins(
                        fontSize: 30.sp,
                      ),
                    ),
                    Text(
                      project.description,
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      project.techStack.join(", "),
                      softWrap: true,
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                      ),
                    ),
                    Visibility(
                      visible: project.code != null,
                      child: NeuIconButton(
                        enableAnimation: true,
                        icon: Icon(FontAwesome.github_brand),
                        onPressed: () {
                          launchUrl(Uri.parse(project.code ?? ""));
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
