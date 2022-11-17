import 'category_item.dart';
import 'package:flutter/material.dart';
import 'categories_list.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Multiple Products')),
        body: GridView(
          padding: const EdgeInsets.all(25),

          //Scroll Down
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: CATEGORIES_LIST
              .map((catData) => CategoryItem(catData.title, catData.color))
              .toList(),
        ));
  }
}
