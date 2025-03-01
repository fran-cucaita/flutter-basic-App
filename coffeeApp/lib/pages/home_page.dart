import 'package:flutter/material.dart';
import 'package:test_application/pages/details_page.dart';
import 'package:test_application/pages/recipes_page.dart';
import 'package:test_application/routes/routes.dart';
import 'package:test_application/widgets/product_card.dart';
import 'package:test_application/widgets/recipe_card.dart';
import 'package:test_application/widgets/tools_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String ROUTE = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        //backgroundColor: Colors.blueGrey[900],
        backgroundColor: Colors.black,
        // title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(20),
              // width: MediaQuery.of(context).size.width * 1,
              //color: Colors.red,
              width: 280,
              child: Text(
                "Find the best coffee for you",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.transparent,
              child: Center(
                child: new Container(
                  width: 400,
                  decoration: new BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                      ),
                      hintText: 'Fint your coffee',
                      hintStyle: TextStyle(color: Colors.white),
                      // labelText: "Busqueda",
                      // labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Brewing coffee',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => (RecipesPage())));
                    },
                    child: Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  RecipeCard(
                    image: 'lib/assets/brewing/espresso.jpg',
                    title: "Espresso",
                    cups: '1-2',
                    description:
                        "El café expreso es una forma de preparación de café originada en Italia.​ Debe su término a la obtención de esta bebida a través de una cafetera expreso.​ Se caracteriza por su rápida preparación a una alta presión y por un sabor y textura más concentrados.",
                  ),
                  RecipeCard(
                    image: 'lib/assets/brewing/v60.jpg',
                    title: "V60",
                    cups: '2',
                    description:
                        "v60 es.....................   .................................   .............................................",
                  ),
                  RecipeCard(
                    image: 'lib/assets/brewing/aeropress.jpg',
                    title: "Aeropress",
                    cups: '2',
                    description:
                        "aeropress es....................  ...............................  ................................................",
                  ),
                  RecipeCard(
                    image: 'lib/assets/brewing/volturno.jpg',
                    title: "Volturno",
                    cups: '3',
                    description:
                        "Volturno es ...................................................................................................",
                  ),
                  RecipeCard(
                    image: 'lib/assets/brewing/prensa.jpg',
                    title: "Prensa",
                    cups: '5',
                    description:
                        "prensa es ...................................................................................................",
                  ),
                  RecipeCard(
                    image: 'lib/assets/brewing/chemex.jpg',
                    title: "Chemex",
                    cups: '6',
                    description:
                        "Chemex es ...................................................................................................",
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tools by Category',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Center(child: ButtonTools()),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  width: MediaQuery.of(context).size.width * 1,
                  height: 250,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ProductCard(
                          image: 'lib/assets/products/aeroPress.jpg',
                          title: "AeroPress",
                          price: '1,010.000 COP',
                        ),
                        ProductCard(
                          image: 'lib/assets/products/chemex.jpg',
                          title: "Chemex",
                          price: '10.000 COP',
                        ),
                        ProductCard(
                          image: 'lib/assets/products/V60.jpg',
                          title: "V60",
                          price: '600.000 COP',
                        ),
                        ProductCard(
                          image: 'lib/assets/products/francesa.jpg',
                          title: "Francesa",
                          price: '600.000 COP',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
