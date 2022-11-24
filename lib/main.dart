import 'package:flutter/material.dart';
import './genres_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => GenresScreen();
}