
import 'package:flutter/material.dart';
import 'package:portfolio/src/presentation/views/home/widgets/aboout_section.dart';
import 'package:portfolio/src/presentation/views/home/widgets/experience_section.dart';
import 'package:portfolio/src/presentation/views/home/widgets/project_section.dart';
import 'package:portfolio/src/presentation/views/home/widgets/skills_section.dart';
import 'package:portfolio/src/presentation/views/home/widgets/top_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double deviceWidth, deviceHeight;

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBar(),
            AboutSection(),
            SkillsSection(),
            ExperienceSection(),
            ProjectSection(),
          ],
        ),
      ),
    );
  }
}

