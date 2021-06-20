import 'package:shuppy/src/models/taco_product.dart';

import 'product_model.dart';

class FavoriteModel {
  final int? id;
  final TacoProductModel? product;
  bool isLiked;

  FavoriteModel({this.id, this.product, this.isLiked = false});
}
