import 'package:flutter/material.dart';
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
    return LayoutBuilder(
      builder: (_, size) => Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: (size.maxWidth < 1000) ? 50 : 100,
              vertical: 50,
            ),
            child: NeuContainer(
              height: 100,
              borderRadius: BorderRadius.circular(10),
              width: double.maxFinite,
              color: Colors.grey.shade800,
              child: Center(
                child: Text(
                  "Projects",
                  style: GoogleFonts.poppins(
                    fontSize: 50,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(
            // color: Colors.red,
            height: 300,
            width: double.maxFinite,
            child: GridView.builder(
              padding: EdgeInsets.symmetric(
                horizontal: (size.maxWidth < 1000) ? 50 : 100,
                // vertical: 50,
              ),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: double.maxFinite,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 1,
                mainAxisExtent: 300,
              ),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: projects.length,
              itemBuilder: (_, i) {
                Project project = projects[i];
                return NeuCard(
                  cardColor: Colors.grey.shade800,
                  paddingData: const EdgeInsets.all(10),
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        project.name,
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        project.description,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        project.techStack.join(", "),
                        softWrap: true,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                        ),
                      ),
                      Visibility(
                        visible: project.code != null,
                        child: InkWell(
                          child: const Icon(
                            FontAwesome.github_brand,
                            color: Colors.white,
                          ),
                          onTap: () {
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
      ),
    );
  }
}
