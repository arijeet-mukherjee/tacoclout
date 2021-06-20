part of '../cart_page.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int? _total = 0;
  int _shipping = 5;

  @override
  Widget build(BuildContext context) {

    /// Sum per product
    LocalList.cartList
        .map((e) {
          return e.price! * 1;
        })
        .toList()
        .fold(0, (dynamic p, c) => _total = p + c);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        enableLeading: false,
        centerTitle: true,
        title: AppLocalizations.of(context)!.shopping_cart,
      ),
      body: (LocalList.cartList.length != 0)
          ? Padding(
              padding: EdgeInsets.symmetric(horizontal: Const.margin),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: LocalList.cartList.length,
                      itemBuilder: (context, index) {
                        var product = LocalList.cartList[index];
                        return _BuildCartCard(
                          product: product,
                          onPressedAdd: () {
                            setState(() => 
                                max(1,  1));
                          },
                          onPressedRemove: () {
                            /* if (product.quantity != 1) {
                              setState(() {
                                product.quantity =
                                    min(50, product.quantity - 1);
                              });
                            } */
                          },
                          onPressedDelete: () {
                            setState(() {
                              LocalList.cartList.removeAt(index);
                            });
                            showSnackbar(
                              context,
                              position: SnackPosition.TOP,
                              title: AppLocalizations.of(context)!.success,
                              subtitle: AppLocalizations.of(context)!
                                  .product_is_removed,
                            );
                          },
                        );
                      },
                    ),
                  ),
                  _BodySection(
                    totalPrice: _total!,
                    shippingCost: _shipping,
                    total: _total! + _shipping,
                    onCheckoutTap: () {
                      /* Get.toNamed(Routes.checkout,
                          arguments: CheckoutArgument(
                            total: _total,
                            shipping: _shipping,
                            products: LocalList.cartList,
                          )); */
                    },
                  ),
                ],
              ),
            )
          : EmptySection(
              image: Illustrations.empty_cart,
              title: AppLocalizations.of(context)!.shopping_cart_is_empty,
            ),
    );
  }
}
