import 'package:worldwide_products/genres_list.dart';
import './api/api_connection.dart';
import './model/genre.dart';
import 'package:flutter/material.dart';

class GenresScreen extends StatelessWidget {
  late Future<Genre> futureGenre;
  // const Color[] colors = [];

  Widget build(BuildContext context) {
    futureGenre = fetchGenres();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Videogames Genres'),
      ),
      // backgroundColor: Color(0xFFF5F5F3),
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
    );
  }
}
