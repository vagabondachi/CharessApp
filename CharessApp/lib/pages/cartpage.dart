import 'package:flutter/material.dart';
import 'package:CharessApp/widgets/numitemsCart.dart';


class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "CART",
          style: TextStyle(
            color: Color.fromARGB(255, 240, 119, 159),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),

        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color.fromARGB(255, 74, 31, 133),
              size: 25,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
        ),
      ),

    );
  }
}


