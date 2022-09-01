import 'package:flutter/material.dart';
import 'package:CharessApp/pages/homepage.dart';
import 'package:CharessApp/pages/cartpage.dart';
import 'package:CharessApp/pages/productviewpage.dart';
void main() {
  runApp(const charessmain());
}
class CharessApp extends StatelessWidget {
  const CharessApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Charess Merch App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/" : (context) => HomePage(),
        "cartpage" : (context) => CartPage(),
        "itemview" : (context) => ProductViewPage()
      },
    );
  }
}