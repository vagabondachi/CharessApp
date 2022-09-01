import 'package:flutter/material.dart';
import 'package:CharessApp/pages/product.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          height:40,
          width: 40,
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
    );
  }
}
