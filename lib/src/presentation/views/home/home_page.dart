import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:portfolio/src/presentation/views/home/project.dart';
import 'package:portfolio/src/presentation/views/home/tech_stack.dart';

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
            SizedBox(
              height: 40.h,
            ),
            TopBar(),
            AboutSection(),
            SkillsSection(),
            ExperinceSection(),
            ProjectSection(),
          ],
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  late double deviceWidth, deviceHeight;

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
      child: NeuContainer(
        height: deviceHeight * 0.08,
        width: deviceWidth,
        color: Colors.grey.shade800,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Home",
                style: GoogleFonts.poppins(
                  fontSize: 25.sp,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Journey",
                style: GoogleFonts.poppins(
                  fontSize: 25.sp,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Projects",
                style: GoogleFonts.poppins(
                  fontSize: 25.sp,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            NeuIconButton(
              enableAnimation: true,
              icon: Icon(EvaIcons.sun),
              buttonHeight: 50.h,
              buttonWidth: 50.h,
              borderRadius: BorderRadius.circular(10.r),
            ),
            SizedBox(
              width: 20.w,
            ),
          ],
        ),
      ),
    );
  }
}

class SkillsSection extends StatefulWidget {
  SkillsSection({super.key});

  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  late double deviceHeight, deviceWidth;

  final InfiniteScrollController _scrollController = InfiniteScrollController();

  bool _isLoading = false;

  Timer? _autoScrollTimer;

  List<TechStack> skills = [
    TechStack(
      name: 'Dart',
      icon: Brand(Brands.dart),
      description:
          'Dart is a client-optimized language for fast apps on any platform',
      type: TechStackType.language,
    ),
    TechStack(
      name: 'Flutter',
      icon: Brand(Brands.flutter),
      description:
          'Flutter is Google’s UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.',
      type: TechStackType.framework,
    ),
    TechStack(
      name: 'Firebase',
      icon: Brand(Brands.firebase),
      description:
          'Firebase is a platform developed by Google for creating mobile and web applications.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Linux',
      icon: Brand(Brands.bash),
      description:
          'Linux is a family of open-source Unix-like operating systems based on the Linux kernel, an operating system kernel first released on September 17, 1991, by Linus Torvalds.',
      type: TechStackType.platform,
    ),
    TechStack(
      name: 'Git',
      icon: Brand(Brands.git),
      description:
          'Git is a distributed version-control system for tracking changes in source code during software development.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Django',
      icon: Brand(Brands.django),
      description:
          'Git is a distributed version-control system for tracking changes in source code during software development.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Python',
      icon: Brand(Brands.python),
      description:
          'Git is a distributed version-control system for tracking changes in source code during software development.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Node Js',
      icon: Brand(Brands.nodejs),
      description:
          'Git is a distributed version-control system for tracking changes in source code during software development.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Node Js',
      icon: Brand(Brands.javascript),
      description:
          'Git is a distributed version-control system for tracking changes in source code during software development.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Node Js',
      icon: Brand(Brands.java),
      description:
          'Git is a distributed version-control system for tracking changes in source code during software development.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Node Js',
      icon: Brand(Brands.android_os),
      description:
          'Git is a distributed version-control system for tracking changes in source code during software development.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Node Js',
      icon: Brand(Brands.c_programming),
      description:
          'Git is a distributed version-control system for tracking changes in source code during software development.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Node Js',
      icon: Brand(Brands.cpp),
      description:
          'Git is a distributed version-control system for tracking changes in source code during software development.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Node Js',
      icon: Brand(Brands.kotlin),
      description:
          'Git is a distributed version-control system for tracking changes in source code during software development.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Node Js',
      icon: Brand(Brands.html_5),
      description:
          'Git is a distributed version-control system for tracking changes in source code during software development.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Node Js',
      icon: Brand(Brands.css3),
      description:
          'Git is a distributed version-control system for tracking changes in source code during software development.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Node Js',
      icon: Brand(Brands.react_native),
      description:
          'Git is a distributed version-control system for tracking changes in source code during software development.',
      type: TechStackType.tool,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _startAutoScroll();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 200 &&
        !_isLoading) {
      _loadMoreItems();
    }
  }

  void _loadMoreItems() {
    setState(() => _isLoading = true);
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  void _startAutoScroll() {
    _autoScrollTimer =
        Timer.periodic(const Duration(milliseconds: 50), (timer) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.offset + 2,
          duration: const Duration(milliseconds: 50),
          curve: Curves.linear,
        );
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _autoScrollTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      height: deviceHeight * 0.1,
      // width: deviceWidth,
      color: Colors.black,
      child: InfiniteCarousel.builder(
        itemExtent: 120.w,
        loop: true,
        velocityFactor: 1.0,
        // shrinkWrap: true,
        // scrollDirection: Axis.horizontal,
        itemCount: skills.length,
        controller: _scrollController,
        itemBuilder: (_, i, j) {
          TechStack skill = skills[i];
          return Container(
            margin: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 15.w,
            ),
            child: skill.icon,
          );
        },
      ),
    );
  }
}

class ExperinceSection extends StatelessWidget {
  ExperinceSection({super.key});
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
