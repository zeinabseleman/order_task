import 'dart:ui';

class FavoriteModel{
 final String? name;
 final String? pieces;
 final String? time;
 final String?price;
 final String?offer;
 final String?image;
 final Color? categoryColor;

  FavoriteModel(
      {this.name,
      this.pieces,
      this.time,
      this.price,
      this.offer,
      this.image,
      this.categoryColor});
}