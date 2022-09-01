import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:CharessApp/widgets/categorieswidget.dart';
import 'package:CharessApp/widgets/itemswidget.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final items = [
      Icon(Icons.home, size:30, color: Colors.white),
      Icon(Icons.favorite,size:30, color: Colors.white),
      Icon(Icons.person, size:30, color: Colors.white),
    ];
        return Scaffold(
          extendBody: true,

          appBar : AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text(
                "YAWALAND",
                style: TextStyle(
                  color: Color.fromARGB(255, 240, 119, 159),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),

            leading: IconButton(
                icon: const Icon(
                Icons.sort_outlined,
                color:Color.fromARGB(255, 74, 31, 133),
                size: 30,
                ),
              onPressed: (){
                Navigator.pushNamed(context, "cartpage");
              },),

            actions: [
              Stack(
                children: [
                  IconButton(
                      icon: const Icon(
                        Icons.shopping_bag_outlined,
                        color:Color.fromARGB(255, 74, 31, 133),
                        size: 30,
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, "cartpage");
                      }),
                  Positioned(
                    top: 0,
                    right:6,
                    child: Container(
                      margin: const EdgeInsets.only(top:5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        "0",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          body: ListView(children: [
            Container(
              padding: EdgeInsets.only(top: 15),
              margin: EdgeInsets.only(top:10),
              decoration: BoxDecoration(
              color: Color(0Xffedecf2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )
          ),
              child: Column(children: [

            //Search Widget
              Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left:2),
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search...",
                        prefixIcon: Icon(
                            Icons.search,
                            size: 22
                        ),
                        prefixIconConstraints: BoxConstraints(
                          minWidth: 35,
                          minHeight: 25,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.camera_alt,
                    size: 27,
                    color: Color.fromARGB(255, 240, 119, 159),
                  )
                ],
              ),
            ),

                //This is the Banner Carousel
                Container(
                margin: EdgeInsets.only(top:20),
                height: 190,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/images/banner1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

                //Category Header with icon
                Container(
                  margin:EdgeInsets.only(top:30, left:25, bottom: 20),
                  child: Column(
                    children: [
                      Row( children: [
                        Text(
                          "Categories",
                          style: GoogleFonts.montserrat(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),

                        //Adds space between Text and Icon
                        SizedBox(
                          width: 10,
                        ),

                        Icon(
                          FeatherIcons.sliders,
                          size: 27,
                          color: Color.fromARGB(255, 240, 119, 159)
                        ),
                      ],
                      ),
                    ],
                  ),
                ),

                //Category section slider
              CategoriesWidget(),

              //Items
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize:25,
                    fontWeight: FontWeight.bold,
                    color:Color.fromARGB(255, 74, 31, 133),
                  ),
                ),
              ),

              //For items/product
              ItemsWidget(),
            ]
            ),
          ),
        ],
        ),

        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors. transparent,
          onTap: (index) {},
          height: 70,
          color: Color.fromARGB(255, 240, 119, 159),
          items: items,
      ),
    );
  }
}