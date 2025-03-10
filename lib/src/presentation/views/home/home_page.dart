import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/src/config/bloc/config_bloc.dart';
import 'package:portfolio/src/presentation/views/home/widgets/about_section.dart';
import 'package:portfolio/src/presentation/views/home/widgets/experience_section.dart';
import 'package:portfolio/src/presentation/views/home/widgets/footer_section.dart';
import 'package:portfolio/src/presentation/views/home/widgets/project_section.dart';
import 'package:portfolio/src/presentation/views/home/widgets/skills_section.dart';
import 'package:portfolio/src/presentation/views/home/widgets/top_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey experienceKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            width: 1920,
            height: 1080,
            child: _Background(),
          ),
          SingleChildScrollView(
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
                const FooterSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfigBloc, ConfigState>(
      builder: (_, state) => (state.backgroundImageData.isNotEmpty)
          ? SvgPicture.string(
              state.backgroundImageData,
              fit: BoxFit.cover,
              // height: 1080,
              // width: double.infinity,
            )
          : Container(),
    );
  }
}

extension HexColor on Color {
  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
