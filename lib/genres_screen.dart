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
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,
        title: Text('Videogames Genres'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Colors.cyan, Colors.blue],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ),
      ),
      // appBar: AppBar(
      // backgroundColor: Color.fromARGB(255, 0, 255, 238),
      // elevation: 0.0,
      // centerTitle: true,
      // title: Text('Videogames Genres',
      //     style: TextStyle(
      //         fontFamily: 'Varela',
      //         fontSize: 20.0,
      //         color: Color(0xFF545D68))),
      // ),
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
