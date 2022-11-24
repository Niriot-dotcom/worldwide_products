import 'dart:developer';

import 'package:worldwide_products/genres_list.dart';
import 'package:worldwide_products/model/videogame.dart';

import './api/api_connection.dart';
import 'package:worldwide_products/main.dart';
import './model/genre.dart';

import 'genre_item.dart';
import 'package:flutter/material.dart';

class GenresScreen extends State<MyApp> {
  late Future<Genre> futureGenre;


  @override
  void initState() {
    super.initState();
    futureGenre = fetchGenres();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(title: const Text('Multiple Products')),
  //       body: GridView(
  //         padding: const EdgeInsets.all(25),

  //         //Scroll Down
  //         gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
  //             maxCrossAxisExtent: 200,
  //             childAspectRatio: 3 / 2,
  //             crossAxisSpacing: 20,
  //             mainAxisSpacing: 20),
  //         children: CATEGORIES_LIST
  //             .map((catData) => CategoryItem(catData.title, catData.color))
  //             .toList(),
  //       ));
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Genres'),
        ),
        body: Center(
          child: FutureBuilder<Genre>(
            future: futureGenre,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return GenresList(snapshot.data!.results!);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }

}
