part of '../order_page.dart';

class OrderDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OrderModel order = Get.arguments;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.order_detail,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          _BuildProductOrderList(itemCount: order.products!),
          SizedBox(height: Const.space25),
          CustomShakeTransition(
              duration: Duration(milliseconds: 1300),
              child: Text(AppLocalizations.of(context)!.destination_address,
                  style: theme.textTheme.headline3)),
          SizedBox(height: Const.space12),
          CustomShakeTransition(
              duration: Duration(milliseconds: 1400),
              child: Text(order.address!, style: theme.textTheme.subtitle1)),
          SizedBox(height: Const.space25),
          CustomShakeTransition(
              duration: Duration(milliseconds: 1500),
              child: Text('Order ID: ${order.id}',
                  style: theme.textTheme.headline3)),
          SizedBox(height: Const.space12),
          CustomShakeTransition(
            duration: Duration(milliseconds: 1600),
            child: _BuildOrderItem(
                label: AppLocalizations.of(context)!.total_price,
                value: order.totalOfAllProduct!),
          ),
          CustomShakeTransition(
            duration: Duration(milliseconds: 1700),
            child: _BuildOrderItem(
                label: AppLocalizations.of(context)!.shipping_costs,
                value: order.shipping!),
          ),
          SizedBox(height: 5.0),
          CustomShakeTransition(
            duration: Duration(milliseconds: 1800),
            child: _BuildOrderItem(
                label: AppLocalizations.of(context)!.total,
                value: order.total!,
                isTotal: true),
          ),
          SizedBox(height: Const.space12),
          CustomShakeTransition(
            duration: Duration(milliseconds: 1900),
            child: Text(AppLocalizations.of(context)!.order_status,
                style: theme.textTheme.headline3),
          ),
          CustomShakeTransition(
            duration: Duration(milliseconds: 2000),
            child: _BuildOrderTimeline(status: order.orderStatus),
          ),
        ],
      ),
    );
  }
}
