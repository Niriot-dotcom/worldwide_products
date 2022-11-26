import 'package:flutter/material.dart';
import './genres_screen.dart';
import './videogame_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Videogames Genres',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => GenresScreen(),
        '/genre-videogames': (ctx) => VideoGameScreen(),
      },
    );
  }
}
