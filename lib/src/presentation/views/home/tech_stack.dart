// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TechStack {
  String name;
  Widget icon;
  String description;
  TechStack({
    required this.name,
    required this.icon,
    required this.description,
    required this.type,
  });
  TechStackType type;
}

enum TechStackType {
  language,
  framework,
  tool,
  database,
  platform,
  other,
}
