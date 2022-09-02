import 'package:flutter/material.dart';

class Merch {
  String name;
  String description;
  String size;
  double price;
  double discount;
  List<String> sizes;
  List<String> images;
  bool favorites;

  Merch(
      this.name,
      this.description,
      this.sizes,
      this.price,
      this.discount,
      this.images,
      this.favorites
      );
}

List<Merch> getMerchList(){
  return<Merch>[

    //TSHIRTS
    Merch(
      "No.006 Charessard",
      "Choose your pokemon!",
      [
        "S",
        "M",
        "L",
        "XL",
        "XXL"
      ],
      299,
      0,
      [
        "assets/images/Tees/tshir1.png",
        "assets/images/Tees/tshirt1vargreen.png"
      ],
      false
    ),

    Merch(
        "Top Fan Baby",
        "Baka Top fan yarn?",
        [
          "S",
          "M",
          "L",
          "XL",
          "XXL"
        ],
        299,
        0,
        [
          "assets/images/Tees/tshir2.png",
          "assets/images/Tees/tshirt2vargreen.png"
        ],
        false
    ),

    Merch(
        "Eyes on Me",
        "Proud sa Bold!",
        [
          "S",
          "M",
          "L",
          "XL",
          "XXL"
        ],
        299,
        0,
        [
          "assets/images/Tees/tshir3.png",
          "assets/images/Tees/tshirt3vargreen.png"
        ],
        false
    ),

    Merch(
        "Charessard Limited Edition",
        "Choose your pokemon!",
        [
          "S",
          "M",
          "L",
          "XL",
          "XXL"
        ],
        299,
        0,
        [
          "assets/images/Tees/tshir4.png",
          "assets/images/Tees/tshirt4vargreen.png"
        ],
        false
    ),

    Merch(
        "Top Fan Limited Edition",
        "Top Fan yarn?",
        [
          "S",
          "M",
          "L",
          "XL",
          "XXL"
        ],
        299,
        0,
        [
          "assets/images/Tees/tshir5.png",
          "assets/images/Tees/tshirt5vargreen.png"
        ],
        false
    ),

      //STICKERS
    Merch(
        "CHARECHII LIMITED EDITION STICKER",
        "IMONG MAMA",
        [
        ],
        299,
        0,
        [
          "assets/images/Tees/tshir5.png",
          "assets/images/Tees/tshirt5vargreen.png"
        ],
        false
    ),

    Merch(
        "NOT LETTING GO STICKER",
        "SHOT PUNO!!",
        [
        ],
        49,
        0,
        [
          "assets/images/stickers/sticker1.png",
          "assets/images/stickers/stickerside1.png"
        ],
        false
    ),

    //POSTERS
    Merch(
        "PUBG SKIN POSTER LIMITED EDITION",
        "Barilin mo ako beh",
        [
        ],
        99,
        0,
        [
          "assets/images/posters/p1.png",
          "assets/images/posters/pgal1.png",
          "assets/images/posters/pgalside1.png"
        ],
        false
    ),

    Merch(
        "Japan Empress",
        "Tapakan mo ako Queen!",
        [
        ],
        99,
        0,
        [
          "assets/images/posters/p2.png",
          "assets/images/posters/pgal2.png",
          "assets/images/posters/pgalside2.png"
        ],
        false
    ),

    Merch(
        "Japan Empress",
        "Tapakan mo ako Queen!",
        [
        ],
        99,
        0,
        [
          "assets/images/posters/p2.png",
          "assets/images/posters/pgal2.png",
          "assets/images/posters/pgalside2.png"
        ],
        false
    ),

    Merch(
        "Japan Empress",
        "Tapakan mo ako Queen!",
        [
        ],
        99,
        0,
        [
          "assets/images/posters/p2.png",
          "assets/images/posters/pgal2.png",
          "assets/images/posters/pgalside2.png"
        ],
        false
    ),

    Merch(
        "Japan Empress",
        "Tapakan mo ako Queen!",
        [
        ],
        99,
        0,
        [
          "assets/images/posters/p2.png",
          "assets/images/posters/pgal2.png",
          "assets/images/posters/pgalside2.png"
        ],
        false
    ),


  ];
}





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
      "NSFW",
      false,
    ),
  ];
}