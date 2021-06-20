part of '../order_page.dart';

class OrderHistoryScreen extends StatelessWidget {
  _mailEnquiry() async {
    final url = Mailto(
      to: [
        'helptacoclout@gmail.com',
        'arijeetmukherjee6262@gmail.com',
      ],
      subject: 'Enquiry about product shipment / order',
      body: 'Hey! I have an question about an order, product or general question.',
    ).toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      /* showCupertinoDialog(
                    context: context,
                    builder: MailClientOpenErrorDialog(url: url).build,
                  ); */
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final args = Get.arguments;

    return WillPopScope(
      onWillPop: () async {
        if (args == true) {
          Get.offAllNamed(Routes.profile);
        } else {
          Get.back();
        }
        return false;
      },
      child: Scaffold(
        appBar:
            CustomAppBar(context, title: 'Track My Order', leadingOntap: () {
          if (args == true) {
            Get.offAllNamed(Routes.profile);
          } else {
            Get.back();
          }
        }),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: LocalList.orderHistoryList().length,
                itemBuilder: (context, index) {
                  var data = LocalList.orderHistoryList()[index];
                  return BuildOrderHistoryCard(
                    notification: data,
                    onDeleteTap: () {
                      showToast(msg: 'OK');
                    },
                  );
                },
              ),
            ),
            Container(
              child: SizedBox(height: Const.space15),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              color: ColorLight.primary,
              child: CustomElevatedButton(
                label: 'Email US',
                onTap: () {
                  _mailEnquiry();
                },
              ),
            ),
          ],
        ),
        /* LocalList.orderList.isNotEmpty
            ? ListView.separated(
                itemCount: LocalList.orderList.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: Const.margin),
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemBuilder: (context, index) {
                  var order = LocalList.orderList[index];
                  _status(OrderStatus val) {
                    switch (order.orderStatus) {
                      case OrderStatus.pending:
                        return 'Pending';
                      case OrderStatus.process:
                        return 'Process';
                      case OrderStatus.on_delivery:
                        return 'On Delivery';
                      case OrderStatus.done:
                        return 'Done';
                      default:
                        return 'Cancelled';
                    }
                  }

                  _statusColor(OrderStatus val) {
                    switch (order.orderStatus) {
                      case OrderStatus.pending:
                        return Color(0xFFF9529);
                      case OrderStatus.process:
                        return Color(0xFF9ACD32);
                      case OrderStatus.on_delivery:
                        return Color(0xFF9ACD32);
                      case OrderStatus.done:
                        return Color(0xFF9ACD32);
                      default:
                        return Color(0xFF9ACD32);
                    }
                  }

                  return ExpansionTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Order Id: ${order.id}',
                            style: theme.textTheme.headline4),
                        Text(_status(order.orderStatus),
                            style: theme.textTheme.subtitle2!.copyWith(
                              color: _statusColor(order.orderStatus),
                            )),
                      ],
                    ),
                    children: order.products!
                        .map((e) => InkWell(
                              onTap: () {
                                Get.toNamed(
                                  Routes.order_detail,
                                  arguments: order,
                                );
                              },
                              child: _BuildProductOrderCard(product: e),
                            ))
                        .toList(),
                  );
                },
              )
            : EmptySection(
                title:
                    AppLocalizations.of(context)!.your_order_history_is_empty,
                image: Illustrations.empty_order,
              ),
 */
      ),
    );
  }
}
