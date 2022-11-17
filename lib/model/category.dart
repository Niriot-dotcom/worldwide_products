import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;
  final String apiUrl;
  final String searchById;

  const Category(
      {required this.id,
      required this.title,
      required this.apiUrl,
      this.searchById = "false",
      this.color = Colors.white});
}
