
import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:portfolio/src/domain/models/tech_stack.dart';

class SkillsSection extends StatefulWidget {
  SkillsSection({super.key});

  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  // late double deviceHeight, deviceWidth;

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

    return Container(
      height: 100,
      // width: deviceWidth,
      color: Colors.black,
      child: InfiniteCarousel.builder(
        itemExtent: 120,
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
              horizontal: 15, 
              vertical: 15,
            ),
            child: skill.icon,
          );
        },
      ),
    );
  }
}
