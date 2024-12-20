import 'package:flutter/material.dart';
import 'package:recipe_app/home_page.dart';
import 'package:recipe_app/models/resipe.dart';

class DetailesPage extends StatelessWidget {
  final Recipe recipe;

  const DetailesPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 400,
              height: 240,
              child: Image.asset(
                recipe.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 22.0,
            ),
            Text(
              recipe.ingredients,
              style: TextStyle(fontSize: 26.0),
            ),
            OutlinedButton(onPressed: () {
              myDialog(context);
            }, child: Text("OK"),),
          ],
        ),
      ),
    );
  }
  Future myDialog(BuildContext context){
    return showDialog(context: context, builder: (BuildContext context) => AlertDialog(
      title: Text("Info", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),
      content: Text("shu taomni olishni tafsiya qilamiz", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),),
      actions: [
        TextButton(onPressed: () {
          Navigator.pop(context);
        }, child: Text("Ok"),),
        TextButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),),);
        }, child: Text("No"),),
      ],
    ));
  }
}
