// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:portfolio/src/presentation/views/home/tech_stack.dart';

class Project {
  String name;
  String description;
  String image;
  List<TechStack> techStack;
  Project({
    required this.name,
    required this.description,
    required this.image,
    required this.techStack,
  });
}
