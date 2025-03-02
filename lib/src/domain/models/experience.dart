// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Experience {
  String role;
  String organization;
  DateTimeRange range;
  String description;
  bool isCurrent;
  Experience({
    required this.role,
    required this.organization,
    required this.range,
    required this.description,
    this.isCurrent = false,
  });
}
