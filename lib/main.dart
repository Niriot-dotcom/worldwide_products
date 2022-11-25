import 'package:flutter/material.dart';
import './genres_screen.dart';
import './videogame_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Genres',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => GenresScreen(),
        '/genre-videogames': (ctx) => VideoGameScreen(),
      },
    );
  }
}