class Recipe {
  String title;
  String imageUrl;
  String cost;
  String ingredients;

  Recipe(this.title,this.imageUrl, this.cost,this.ingredients);
  
  static List<Recipe> list =[
    Recipe('Pepperoni', 'assets/images/pizza.jpg', '65.000', 'kalbasa ,sir, xamir'),
    Recipe('Manti', 'assets/images/manti.jpg', '55.000', "go'sht ,piyoz, xamir"),
    Recipe('KFC', 'assets/images/KFC.jpg', '30.000', 'oyoqcha ,fri, sous'),
    Recipe('Tort', 'assets/images/tort.jpg', '260.000', 'tuxum ,shakar, qaymoq,un, shokolad'),
  ];
}