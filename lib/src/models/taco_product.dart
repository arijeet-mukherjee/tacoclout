import 'dart:convert';

import 'package:shuppy/src/helpers/constants.dart';
import 'package:http/http.dart' as http;
import 'package:shuppy/src/models/taco_image.dart';
import 'package:shuppy/src/models/taco_option.dart';
import 'package:shuppy/src/models/toco_category.dart';

class TacoProductModel {
  final int? id;
  final String? name;
  final String? permalink;
  final String? url;
  final String? status;
  final String? on_sale;
  final String? description;
  final double? price;
  final double? default_price;
  final double? tax;
  
  final String? has_option_group;
  final List<dynamic>? options;
  final List<dynamic>? images;
  final List<dynamic>? categories;

  TacoProductModel(
      {this.id,
      this.name,
      this.permalink,
      this.url,
      this.status,
      this.on_sale,
      this.description,
      this.price,
      this.default_price,
      this.tax,
      this.has_option_group,
      this.options,
      this.images,
      this.categories});

  factory TacoProductModel.fromJson(Map<String, dynamic> json) {
    return TacoProductModel(
      id: json["id"],
      name: json["name"],
      permalink: json["permalink"],
      url: json["url"],
      status: json["status"],
      on_sale: json["on_sale"].toString(),
      description: json["description"],
      price: json["price"],
      default_price: json["default_price"],
      tax: json["tax"],
      has_option_group: json["has_option_groups"].toString(),
      options: json["options"],
      images: json["images"],
      categories: json["categories"],

    );
  }
}
