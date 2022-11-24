import 'package:flutter/material.dart';

class GenreItem extends StatelessWidget {
  final int id;
  final String name;
  final String slug;

  const GenreItem(this.id, this.name, this.slug, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.black],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15)),
      child: Text(name),
    );
  }
}
