import 'package:worldwide_products/videogame_item.dart';

import './api/api_connection.dart';
import 'package:worldwide_products/main.dart';
import './model/videogames.dart';

import 'genre_item.dart';
import 'package:flutter/material.dart';

class VideoGamesList extends StatelessWidget {
  final List<Results> videogames;

  const VideoGamesList(this.videogames);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView(
          padding: const EdgeInsets.all(25),
          //Scroll Down
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: videogames
              .map((videogame) => VideoGameItem(videogame.id, videogame.name, videogame.slug, videogame.playtime, videogame.platforms, videogame.stores, videogame.released, videogame.backgroundImage, videogame.rating, videogame.ratingTop, videogame.ratings, videogame.ratingsCount, videogame.reviewsTextCount, videogame.added, videogame.addedByStatus, videogame.metacritic, videogame.suggestionsCount, videogame.updated, videogame.tags, videogame.esrbRating, videogame.reviewsCount, videogame.saturatedColor, videogame.dominantColor, videogame.shortScreenshots!))
              .toList(),
        ));
  }

}
