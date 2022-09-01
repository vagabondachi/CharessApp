import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        childAspectRatio: 0.68,
        // disables scroll functionality of gridview
        // then it will scroll with the list view of home page
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        shrinkWrap: true,
        children: [
          for (int i = 1; i < 6; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15,top:10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color:  Color.fromARGB(255, 74, 31, 133),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "price/$i",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Color.fromARGB(255, 240, 119, 159),
                      ),
                    ],
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, "itemview",
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset('assets/images/banner1.png',
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Product Title",
                      style: TextStyle(
                        fontSize: 18,
                        color:Color.fromARGB(255, 74, 31, 133),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment:  Alignment.centerLeft,
                    child: Text(
                      "Write Description of product",
                      style: TextStyle(
                        fontSize: 15,
                        color:Color.fromARGB(255, 74, 31, 133),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "99.00",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color:Color.fromARGB(255, 74, 31, 133),
                          ),
                        ),
                        Icon(
                          Icons.shopping_cart_checkout,
                          color:Color.fromARGB(255, 74, 31, 133),
                        ),
                      ],
                    ),
                  ),
                ]
            ),
          ),
        ]
    );
  }
}