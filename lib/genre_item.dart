import 'package:flutter/material.dart';

class GenreItem extends StatelessWidget {
  final int id;
  final String name;
  final String slug;

  const GenreItem(this.id, this.name, this.slug, {super.key});

  void selectGenre(BuildContext context){
    Navigator.of(context).pushNamed(
      '/genre-videogames',
      arguments: {'id': id, 'name': name},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectGenre(context),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.black],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
        child: Text(name),
      )
    );
  }
}
