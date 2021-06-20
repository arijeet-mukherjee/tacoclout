part of '../order_page.dart';


class _BuildProductOrderCard extends StatelessWidget {
  final ProductModel? product;

  const _BuildProductOrderCard({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        width: double.infinity,
        child: Row(
          children: [
            SizedBox(width: 12.0),
            Container(
              width: 75.0,
              height: 75.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(
                    product!.images!.first,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product!.name!,
                      style: theme.textTheme.headline5,
                      overflow: TextOverflow.clip,
                      maxLines: 2,
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      AppLocalizations.of(context)!.amount +
                          ': ${product!.quantity}',
                      style: theme.textTheme.subtitle1,
                    ),
                    SizedBox(height: 5.0),
                    CustomPriceText(value: product!.price!)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
