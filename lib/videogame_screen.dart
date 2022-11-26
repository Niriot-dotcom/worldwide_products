import 'package:flutter/material.dart';
import './api/api_connection.dart';
import './model/videogames.dart';
import './videogames_list.dart';

class VideoGameScreen extends StatelessWidget {
  late Future<VideoGame> futureVideoGame;

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;

    final genreId = routeArgs['id'].toString();
    final genreName = routeArgs['name'].toString();

    futureVideoGame = fetchVideogames(genreId);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,
        title: Text(
          genreName,
        ),
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
      // backgroundColor: Color(0xFFF5F5F3),
      body: Center(
        child: FutureBuilder<VideoGame>(
          future: futureVideoGame,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return VideoGamesList(snapshot.data!.results!);
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
