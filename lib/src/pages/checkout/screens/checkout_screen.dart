part of '../checkout_page.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  CheckoutArgument? _args;
  var orderId = Random();
  List<ProductModel?> myCart = [];

  @override
  void initState() {
    super.initState();
    _args = Get.arguments;
    myCart.addAll(_args!.products!);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.transaction_details,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomShakeTransition(
                    child: Text(
                      AppLocalizations.of(context)!.product_ordered,
                      style: theme.textTheme.bodyText1,
                    ),
                  ),
                  SizedBox(height: Const.space8),
                  _BuildProductOrderList(args: _args),
                  SizedBox(height: Const.space25),
                  CustomShakeTransition(
                    child: Text(
                      AppLocalizations.of(context)!.shipping_address,
                      style: theme.textTheme.bodyText1,
                    ),
                  ),
                  SizedBox(height: Const.space8),
                  _BuildDestinationAddress(),
                ],
              ),
            ),
            _BodySection(
              totalPrice: _args!.total!,
              shippingCost: _args!.shipping!,
              total: _args!.total! + _args!.shipping!,
              onCheckoutTap: () {
                Dialogs.labelDialog(
                  context,
                  title: AppLocalizations.of(context)!
                      .are_you_sure_you_want_to_checkout_now,
                  primaryButtonLabel: AppLocalizations.of(context)!.yes,
                  onPrimaryButtonTap: () {
                    LocalList.orderList.add(
                      OrderModel(
                        id: orderId.nextInt(1000),
                        address: '2517  Fort Street, Ocracoke, North Carolina',
                        shipping: _args!.shipping,
                        orderStatus: OrderStatus.pending,
                        products: myCart,
                        totalOfAllProduct: _args!.total,
                        total: _args!.total! + _args!.shipping!,
                        createdAt: DateTime.now(),
                      ),
                    );
                    Get.back();
                    Get.offNamed(Routes.checkout_success);
                    LocalList.cartList.clear();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
