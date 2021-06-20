import 'product_model.dart';

enum OrderStatus { pending, process, on_delivery, done }

class OrderModel {
  final int? id;
  final List<ProductModel?>? products;
  final OrderStatus orderStatus;
  final String? address;
  final int? totalOfAllProduct;
  final int? shipping;
  final int? total;
  final DateTime? createdAt;

  OrderModel({
    this.id,
    this.products,
    this.orderStatus = OrderStatus.pending,
    this.address,
    this.totalOfAllProduct,
    this.shipping,
    this.total,
    this.createdAt,
  });
}
