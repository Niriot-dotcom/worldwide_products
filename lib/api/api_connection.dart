import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import '../model/videogames.dart';
import '../model/genre.dart';

const API_KEY = '?token&key=6c049510da8540cc907a7f6b9b6f9961';
const API_BASE = 'https://api.rawg.io/api';

Future<Genre> fetchGenres() async {
  log(API_BASE + '/genres' + API_KEY);
  final response = await http
      .get(Uri.parse(API_BASE + '/genres' + API_KEY));

  if (response.statusCode == 200) {
    return Genre.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load genres');
  }
}

Future<VideoGame> fetchVideogames(String id) async {
  final response = await http
      .get(Uri.parse(API_BASE + '/games' + API_KEY + '&genres=' + id + '&page_size=1000&exclude_additions=true&exclude_parents=true'));

  if (response.statusCode == 200) {
    return VideoGame.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load games');
  }
}