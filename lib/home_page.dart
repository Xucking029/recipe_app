import 'package:flutter/material.dart';
import 'package:recipe_app/datailes_page.dart';
import 'models/resipe.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static List<Recipe> list = [
    Recipe('Pepperoni', 'assets/images/pizza.jpg', '65.000',
        """ 
        100 gramm "pepperoni" kolbasa
        150 gramm motsarella pishlog'i
        50 gramm qattiq pishloq
        100 gramm pomidor
        50 gramm bulg'or qalampiri """),
    Recipe('Manti', 'assets/images/manti.jpg', '55.000', """
        1 kilo un
        320 millilitr suv, 20 gramm tuz, 
        2 dona tuxum
        1 kg mol yoki qo'y go'shti,
        1 kg piyoz,
        300 gramm dumba yog'i,
        ta'bga qarab tuz va murch, zira"""),
    Recipe(
        'KFC', 'assets/images/KFC.jpg', '30.000', """
        12 dona tovuq qanotchalari,
        150 gramm makkajo'xori,
        2 ta tuxum va h.k """),
    Recipe('Tort', 'assets/images/tort.jpg', '260.000', """
        6 ta tuxum
        2 ta tuxum sarig'i
        150 gramm un
        150 gramm shakar
        30 gramm kakao kukuni
        0,5 choy qoshiq qabartma (razrixlitel)"""),
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
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => myItem(context, list[index]),
      ),
    );
  }

  Widget myItem(BuildContext context, Recipe recipe) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailesPage(
                recipe: recipe,
              )),
        );
      },
      child: Card(
        margin: const EdgeInsets.all(6.0),
        elevation: 46,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 400,
              height: 240,
              margin: const EdgeInsets.all(10).copyWith(bottom: 30),
              child: Image.asset(
                recipe.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${recipe.title} ${recipe.cost}",
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

