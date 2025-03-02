class Project {
  String name;
  String description;
  String image;
  List<String> techStack;
  String? code;
  String? preview;

  Project({
    required this.name,
    required this.description,
    required this.image,
    required this.techStack,
    this.code,
    this.preview,
  });
}
