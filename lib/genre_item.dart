import 'package:flutter/material.dart';

class GenreItem extends StatelessWidget {
  final int id;
  final String name;
  final String slug;
  final String imageBackground;

  const GenreItem(this.id, this.name, this.slug, this.imageBackground,
      {super.key});

  void selectGenre(BuildContext context) {
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
      child: Column(children: [
        Container(
            height: 100,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: const Offset(0, 3))
              ],
              image: DecorationImage(
                image: NetworkImage(imageBackground),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
            )),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: const Offset(0, 3))
            ],
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          ),
          height: 25,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              name,
              style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Varela',
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ]),
    );
  }
}
