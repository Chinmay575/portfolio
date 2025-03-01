import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:portfolio/src/domain/models/project.dart';

class ProjectSection extends StatelessWidget {
  ProjectSection({super.key});
  late double deviceHeight, deviceWidth;

  List<Project> projects = [
    Project(
      name: "AgroGuru",
      description: "",
      image:
          "https://camo.githubusercontent.com/56f91a547ef111933c019558352654ee4a1108e22acd5e104510bd9777777dea/68747470733a2f2f692e6962622e636f2f596248567877682f6c6f676f2e706e67",
      techStack: [
        "Flutter",
        "Deep-Learning",
        "Gemini",
        "Django",
      ],
    ),
  ];

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
          height: 300.h,
          width: deviceWidth,
          child: GridView.builder(
            padding: EdgeInsets.symmetric(
              horizontal: deviceWidth * 0.05,
              vertical: deviceHeight * 0.01,
            ),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: deviceWidth,
              crossAxisSpacing: 20.w,
              mainAxisSpacing: 20.w,
              childAspectRatio: 1,
              mainAxisExtent: deviceWidth * 0.218,
            ),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: projects.length,
            itemBuilder: (_, i) {
              Project project = projects[i];
              return NeuCard(
                cardColor: Colors.grey.shade800,
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
                    Row(
                      children: [
                        Brand(Brands.flutter),
                        Brand(Brands.django),
                        Brand(Brands.figma),
                        Brand(Brands.amazon_web_services),
                      ],
                    ),
                    NeuIconButton(
                      enableAnimation: true,
                      icon: Icon(FontAwesome.github_brand),
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
