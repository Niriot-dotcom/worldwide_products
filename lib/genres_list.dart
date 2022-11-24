import './api/api_connection.dart';
import 'package:worldwide_products/main.dart';
import './model/genre.dart';

import 'genre_item.dart';
import 'package:flutter/material.dart';

class GenresList extends StatelessWidget {
  final List<Results> genres;

  const GenresList(this.genres);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Genres')),
        body: GridView(
          padding: const EdgeInsets.all(25),

          //Scroll Down
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: genres
              .map((genre) => GenreItem(genre.id!, genre.name!, genre.slug!))
              .toList(),
        ));
  }

}
