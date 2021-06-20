part of '../order_page.dart';

class _BuildProductOrderList extends StatelessWidget {
  final List? itemCount;

  const _BuildProductOrderList({Key? key, this.itemCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount!.length,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: (context, index) {
        var products = itemCount![index];
        return CustomShakeTransition(
          duration: Duration(milliseconds: 1000),
          child: _BuildProductOrderCard(product: products),
        );
      },
    );
  }
}
