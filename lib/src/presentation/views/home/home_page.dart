import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
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
  final ScrollController _scrollController = ScrollController();
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
      name: 'SQLite',
      icon: Brand(Brands.my_sql),
      description:
          'SQLite is a C-language library that implements a small, fast, self-contained, high-reliability, full-featured, SQL database engine.',
      type: TechStackType.database,
    ),
    TechStack(
      name: 'Linux',
      icon: Brand(Brands.linux_mint),
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
      name: 'GitHub',
      icon: Brand(Brands.github),
      description:
          'GitHub, Inc. is a provider of Internet hosting for software development and version control using Git.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Bitbucket',
      icon: Brand(Brands.bitbucket),
      description:
          'Bitbucket is a web-based version control repository hosting service owned by Atlassian, for source code and development projects that use either Mercurial or Git revision control systems.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Jira',
      icon: Brand(Brands.jira),
      description:
          'Jira Software is an agile project management tool that supports any agile methodology, be it scrum, kanban, or your own unique flavor.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Confluence',
      icon: Icon(Icons.source),
      description:
          'Confluence is a team workspace where knowledge and collaboration meet. Dynamic pages give your team a place to create, capture, and collaborate on any project or idea.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Slack',
      icon: Brand(Brands.slack),
      description:
          'Slack is a proprietary business communication platform developed by American software company Slack Technologies.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Trello',
      icon: const Icon(Icons.source),
      description:
          'Trello is a web-based list-making application originally made by Fog Creek Software in 2011, that was spun out to form the basis of a separate company in 2014 and later sold to Atlassian in January 2017.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Postman',
      icon: Brand(Brands.postgresql),
      description:
          'Postman is a collaboration platform for API development. Postmans features simplify each step of building an API and streamline collaboration so you can create better APIs—faster.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Docker',
      icon: const Icon(Icons.source),
      description:
          'Docker is a set of platform as a service products that use OS-level virtualization to deliver software in packages called containers.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Kubernetes',
      icon: const Icon(Icons.source),
      description: 'Kubernetes',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Postman',
      icon: const Icon(Icons.source),
      description:
          'Postman is a collaboration platform for API development. Postmans features simplify each step of building an API and streamline collaboration so you can create better APIs—faster.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Docker',
      icon: const Icon(Icons.source),
      description:
          'Docker is a set of platform as a service products that use OS-level virtualization to deliver software in packages called containers.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Kubernetes',
      icon: const Icon(Icons.source),
      description: 'Kubernetes',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Postman',
      icon: const Icon(Icons.source),
      description:
          'Postman is a collaboration platform for API development. Postmans features simplify each step of building an API and streamline collaboration so you can create better APIs—faster.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Docker',
      icon: const Icon(Icons.source),
      description:
          'Docker is a set of platform as a service products that use OS-level virtualization to deliver software in packages called containers.',
      type: TechStackType.tool,
    ),
    TechStack(
      name: 'Kubernetes',
      icon: const Icon(Icons.source),
      description: 'Kubernetes',
      type: TechStackType.tool,
    ),
  ];

  List<Project> projects = [
    Project(
      name: "AgroGuru",
      description: "",
      image:
          "https://github-readme-stats.vercel.app/api/pin/?username=chinmay575&repo=agroguru&show_owner=true",
      techStack: [],
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
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: SizedBox(
            height: deviceHeight * 0.01,
          )),
          SliverAppBar(
            elevation: 8,
            title: Text('Portfolio'),
            floating: true,
            // pinned: true,
            flexibleSpace: Container(
              height: 200,
              color: Colors.green,
            ),
            snap: true,
            backgroundColor: Colors.red,
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: deviceHeight * 0.05,
                horizontal: deviceWidth * 0.05,
              ),
              padding: const EdgeInsets.symmetric(),
              height: deviceHeight * 0.5,
              width: deviceWidth,
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Column(
                    children: [
                      Text("Namaste"),
                      Text("I'm Chinmay Singh Modak"),
                      Text(
                        "Flutter Developer",
                      ),
                    ],
                  ),
                  Container(
                    height: deviceHeight * 0.5,
                    width: deviceWidth * 0.2,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: deviceHeight * 0.1,
              // width: deviceWidth,
              color: Colors.black,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: skills.length,
                controller: _scrollController,
                itemBuilder: (_, i) {
                  TechStack skill = skills[i];
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Row(
                      children: [
                        skill.icon,
                        Text(
                          skill.name,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
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
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 0.05,
                  vertical: deviceHeight * 0.01),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text("Isourse Technologies"),
                  Text("Isourse Technologies"),
                  Text("Analysed"),
                  Text("Yoshops.com"),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
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
          ),
          SliverToBoxAdapter(
            child: Container(
              // color: Colors.red,
              height: deviceHeight * 0.3,
              width: deviceWidth,
              child: GridView.builder(
                padding: EdgeInsets.symmetric(
                    horizontal: deviceWidth * 0.05,
                    vertical: deviceHeight * 0.01),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: deviceWidth,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1,
                  mainAxisExtent: deviceWidth * 0.218,
                ),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: projects.length,
                itemBuilder: (_, i) {
                  Project project = projects[i];
                  return NeuCard(
                    cardColor: Colors.blue,
                    // cardWidth: deviceWidth * 0.2,
                    child: Column(
                      children: [
                        SvgPicture.network(
                          project.image,
                          height: deviceHeight * 0.1,
                          width: deviceWidth * 0.2,
                        ),
                        Text(project.name),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
