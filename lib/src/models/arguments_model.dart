import 'product_model.dart';

class BrowseProductArgument {
  final List itemCount;
  final String label;

  BrowseProductArgument({required this.itemCount, required this.label});
}

class WebviewArgument {
  final String url;
  final String label;
  WebviewArgument({required this.label, required this.url});
}

class CheckoutArgument {
  final List<ProductModel?>? products;
  final int? shipping;
  final int? total;

  const CheckoutArgument({this.products, this.shipping, this.total});
}
