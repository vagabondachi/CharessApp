import 'package:flutter/material.dart';

class ProductViewPage extends StatelessWidget {
  static String routname ="itemview";
  const ProductViewPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

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
          actions: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              padding: EdgeInsets.only(left:15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius. circular(20),
                color: Colors.white
            ),
              child: Row(
                children: [
                  Text(
                    "4.5",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 20,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/");
                    },
                  ),
                ],
              ),
            ),
          ],
      ),
      body: ListView(
        children: [
         SizedBox(
           width: double.infinity,
           height: 200,
            child: Image.asset('assets/images/banner1.png'),
          ),
        ],
      ),
    );
  }
}
