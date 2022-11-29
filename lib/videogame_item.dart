import 'dart:developer';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import './model/videogames.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

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

  const VideoGameItem(
      this.id,
      this.name,
      this.slug,
      this.playtime,
      this.platforms,
      this.stores,
      this.released,
      this.backgroundImage,
      this.rating,
      this.ratingTop,
      this.ratings,
      this.ratingsCount,
      this.reviewsTextCount,
      this.added,
      this.addedByStatus,
      this.metacritic,
      this.suggestionsCount,
      this.updated,
      this.tags,
      this.esrbRating,
      this.reviewsCount,
      this.saturatedColor,
      this.dominantColor,
      this.shortScreenshots,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3.0,
                  blurRadius: 5.0)
            ],
            color: Colors.white),

        // height: 100,
        // decoration: BoxDecoration(
        //   color: Colors.white,
        //   boxShadow: [
        //     BoxShadow(
        //         color: Colors.grey.withOpacity(0.5),
        //         spreadRadius: 10,
        //         blurRadius: 10,
        //         offset: const Offset(0, 3))
        //   ],
        //   image: DecorationImage(
        //     image: NetworkImage(backgroundImage!),
        //     fit: BoxFit.fitHeight,
        //   ),
        //   borderRadius: const BorderRadius.only(
        //     topRight: Radius.circular(15),
        //     topLeft: Radius.circular(15),
        //   ),
        // ),

        child: Column(children: [
          // Padding(
          //     padding: EdgeInsets.all(5.0),
          //     child: Row(
          //         mainAxisAlignment: MainAxisAlignment.end,
          //         children: [
          //           isFavorite
          //               ? Icon(Icons.favorite, color: Color(0xFFEF7532))
          //               : Icon(Icons.favorite_border,
          //                   color: Color(0xFFEF7532))
          //         ])),

          // Container(
          //     height: 75.0,
          //     width: 100.0,
          //     decoration: BoxDecoration(
          //         image: DecorationImage(
          //             image: NetworkImage(backgroundImage!),
          //             fit: BoxFit.contain))),
          Container(
              height: 130,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: const Offset(0, 0))
                ],
                image: DecorationImage(
                  image: NetworkImage(backgroundImage!),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
              )),
          Spacer(),
          Text(name!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500)),
          const SizedBox(height: 8.0),
          // Spacer(),
          Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ...[
                      const Icon(Icons.star,
                          color: Color(0xFFD17E50), size: 13.0),
                      // const SizedBox(height: 28.0),
                      Text(rating!.toStringAsFixed(2),
                          style: const TextStyle(
                              color: Color(0xFFCC8053),
                              fontFamily: 'Varela',
                              fontSize: 13.0)),
                    ],
                  ])),
          // child: Row(
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   mainAxisSize: MainAxisSize.max,
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: <Widget>[
          //     const Icon(Icons.star, color: Color(0xFFD17E50), size: 13.0),
          //     const SizedBox(height: 28.0),
          //     Text(rating!.toStringAsFixed(2),
          //         style: const TextStyle(
          //             color: Color(0xFFCC8053),
          //             fontFamily: 'Varela',
          //             fontSize: 13.0)),
          //   ],
          // )),
          // Padding(
          //     padding: const EdgeInsets.only(left: 5.0, right: 5.0),
          //     child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          // if (!added) ...[
          //   Icon(Icons.shopping_basket,
          //       color: Color(0xFFD17E50), size: 12.0),
          //   Text('Add to cart',
          //       style: TextStyle(
          //           fontFamily: 'Varela',
          //           color: Color(0xFFD17E50),
          //           fontSize: 12.0))
          // ],
          // if (added) ...[
          //   Icon(Icons.remove_circle_outline,
          //       color: Color(0xFFD17E50), size: 12.0),
          //   Text('3',
          //       style: TextStyle(
          //           fontFamily: 'Varela',
          //           color: Color(0xFFD17E50),
          //           fontWeight: FontWeight.bold,
          //           fontSize: 12.0)),
          //   Icon(Icons.add_circle_outline,
          //       color: Color(0xFFD17E50), size: 12.0),
          // ]
          // ]))
          // const SizedBox(height: 12.0),
          Spacer()
        ]));
  }
}
