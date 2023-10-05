import 'package:json_annotation/json_annotation.dart';

import 'rating.dart';

part 'home_product_model.g.dart';


@JsonSerializable()
class HomeProductModel {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  HomeProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory HomeProductModel.fromJson(Map<String, dynamic> json) {
    return _$HomeProductModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeProductModelToJson(this);
}
