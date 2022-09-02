import 'package:flutter/material.dart';
import 'package:CharessApp/themes/constants.dart';
import 'package:CharessApp/Data.dart';

class CategoriesWidget extends StatefulWidget {

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  List<Filter> filters = getFilterList();
  List<Merch> merch = getMerchList();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(left: 25),
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: buildFilters(),
      ),
    );
  }

  List<Widget> buildFilters(){
    List<Widget> list = [];
    for (var filter in filters) {
      list.add(buildFilterOption(filter));
    }
    return list;
    }

  Widget buildFilterOption (Filter filter) {
    return GestureDetector(
      onTap: () {
        setState(() {
          filter.selected = !filter.selected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: filter.selected ? kPink : Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.symmetric(horizontal: 32),
        margin: EdgeInsets.only(right: 15),
        child: Center(
          child: Text(
            filter.category,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: filter.selected ? Colors.white : kPink,
            ),
          ),
        ),
      ),
    );
  }
}

