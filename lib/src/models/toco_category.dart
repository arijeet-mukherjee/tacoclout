import 'dart:convert';

import 'package:shuppy/src/helpers/constants.dart';
import 'package:http/http.dart' as http;

class TacoCategoryModel {
  final int? id;
  final String? permalink;
  final String? name;
  final String? url;
  TacoCategoryModel({this.id, this.permalink, this.name, this.url});

  factory TacoCategoryModel.fromJson(Map<String, dynamic> json) {
    return TacoCategoryModel(
        id: json["id"],
        permalink: json["permalink"],
        name: json["name"],
        url: json["url"]);
  }

  
}
