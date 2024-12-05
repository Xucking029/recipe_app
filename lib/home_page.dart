import 'package:flutter/material.dart';

import 'models/resipe.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static List<Recipe> list =[
    Recipe('Pepperoni', 'assets/images/pizza.jpg', '65.000', 'kalbasa ,sir, xamir'),
    Recipe('Manti', 'assets/images/manti.jpg', '55.000', "go'sht ,piyoz, xamir"),
    Recipe('KFC', 'assets/images/KFC.jpg', '30.000', 'oyoqcha ,fri, sous'),
    Recipe('Tort', 'assets/images/tort.jpg', '260.000', 'tuxum ,shakar, qaymoq,un, shokolad'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'Recipe Calculator',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26.0,
          ),
        ),
      ),
      body: ListView(
        children: [
          myItem(list[0]),
          myItem(list[1]),
          myItem(list[2]),
          myItem(list[3]),
        ],
      ),
    );
  }

  Widget myItem(Recipe recipe) {
    return Card(
      margin: const EdgeInsets.all(6.0),
      elevation: 46,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            // padding: const EdgeInsets.all(25.0),
            margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 30.0),
            child: Image.asset(recipe.imageUrl),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${recipe.title} ${recipe.cost} \n${recipe.ingredients}",
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
