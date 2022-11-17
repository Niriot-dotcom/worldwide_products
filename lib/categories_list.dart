import 'package:flutter/material.dart';
import './model/category.dart';
//import './models/meal.dart';

// ignore: constant_identifier_names
const CATEGORIES_LIST = [
  Category(
    id: 'c1',
    title: 'Books',
    color: Colors.amber,
    searchById: "false",
    apiUrl:
        'https://openlibrary.org/subjects/action.json?published_in=2015-2022',
  ),
  Category(
    id: 'c2',
    title: 'Drinks',
    color: Colors.blue,
    searchById: "11000-11010",
    apiUrl:
        'https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i={product_id}',
  ),
  Category(
    id: 'c3',
    title: 'Meals',
    color: Colors.red,
    searchById: "52767-52777",
    apiUrl: 'https://www.themealdb.com/api/json/v1/1/lookup.php?i={product_id}',
  ),
  Category(
    id: 'c3',
    title: 'Video games',
    color: Colors.green,
    searchById: "false",
    apiUrl: '',
  ),
];
