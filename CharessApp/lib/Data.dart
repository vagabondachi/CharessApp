import 'package:flutter/material.dart';
class Filter{
  String category;
  bool selected;
  Filter(this.category, this.selected);
}
List<Filter> getFilterList(){
  return <Filter>[
    Filter(
    "Tshirts",
    false,
    ),
    Filter(
      "Stickers",
      false,
    ),
    Filter(
      "Photocards",
      false,
    ),
    Filter(
      "Posters",
      false,
    ),
    Filter(
      "Bath Water",
      false,
    ),
  ];
}