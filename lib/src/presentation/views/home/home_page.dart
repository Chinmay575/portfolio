import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:portfolio/src/presentation/views/home/widgets/about_section.dart';
import 'package:portfolio/src/presentation/views/home/widgets/experience_section.dart';
import 'package:portfolio/src/presentation/views/home/widgets/footer_section.dart';
import 'package:portfolio/src/presentation/views/home/widgets/project_section.dart';
import 'package:portfolio/src/presentation/views/home/widgets/skills_section.dart';
import 'package:portfolio/src/presentation/views/home/widgets/top_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey experienceKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();

  @override
  void initState() {
    FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/large-triangles.png"),
              fit: BoxFit.scaleDown,
              repeat: ImageRepeat.repeat,
            ),
          ),
          child: Column(
            children: [
              TopBar(
                expKey: experienceKey,
                projectKey: projectsKey,
              ),
              const AboutSection(),
              SkillsSection(),
              ExperienceSection(
                key: experienceKey,
              ),
              ProjectSection(
                key: projectsKey,
              ),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
