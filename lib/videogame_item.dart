import 'package:flutter/material.dart';
import './model/videogames.dart';

class VideoGameItem extends StatelessWidget {
  final String? slug;
  final String? name;
  final int? playtime;
  final List<Platforms>? platforms;
  final List<Stores>? stores;
  final String? released;
  final String? backgroundImage;
  final double? rating;
  final int? ratingTop;
  final List<Ratings>? ratings;
  final int? ratingsCount;
  final int? reviewsTextCount;
  final int? added;
  final AddedByStatus? addedByStatus;
  final int? metacritic;
  final int? suggestionsCount;
  final String? updated;
  final int? id;
  final List<Tags>? tags;
  final EsrbRating? esrbRating;
  final int? reviewsCount;
  final String? saturatedColor;
  final String? dominantColor;
  final List<ShortScreenshots>? shortScreenshots;

  const VideoGameItem(this.id, this.name, this.slug, this.playtime, this.platforms, this.stores, this.released, this.backgroundImage, this.rating, this.ratingTop, this.ratings, this.ratingsCount, this.reviewsTextCount, this.added, this.addedByStatus, this.metacritic, this.suggestionsCount, this.updated, this.tags, this.esrbRating, this.reviewsCount, this.saturatedColor, this.dominantColor, this.shortScreenshots, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(255, 33, 124, 243), Color.fromARGB(255, 29, 213, 238)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(15)),
        child: Text(name!),
        
      );
  }
}
