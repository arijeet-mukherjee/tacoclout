part of '../cart_page.dart';


class _BuildCartCard extends StatelessWidget {
  final TacoProductModel? product;
  final void Function()? onPressedDelete;
  final void Function()? onPressedRemove;
  final void Function()? onPressedAdd;

  const _BuildCartCard(
      {Key? key, required this.product, this.onPressedDelete, this.onPressedRemove, this.onPressedAdd})
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
        height: 120.0,
        child: Row(
          children: [
            SizedBox(width: 12.0),
            Container(
              width: 75.0,
              height: 75.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(product!.images![0]["url"].toString()),
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(product!.name!,
                            style: theme.textTheme.headline5,
                            overflow: TextOverflow.clip,
                            maxLines: 2,
                          ),
                        ),
                        SizedBox(width: 12.0),
                        InkWell(
                          borderRadius: BorderRadius.circular(25.0),
                          onTap: onPressedDelete,
                          child: Icon(
                            Icons.close,
                            size: 20.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      AppLocalizations.of(context)!.amount +
                          ': ${1}',
                      style: theme.textTheme.subtitle1,
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: CustomPriceText(value: product!.price!.toInt() * 1),
                        ),
                        Container(
                          width: 80.0,
                          child: Row(
                            children: [
                              InkWell(
                                borderRadius: BorderRadius.circular(25.0),
                                onTap: onPressedRemove,
                                child: Container(
                                  padding: EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    color: theme.primaryColor,
                                  ),
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Text(1.toString(),
                                  style: theme.textTheme.bodyText2),
                              SizedBox(width: 5.0),
                              InkWell(
                                borderRadius: BorderRadius.circular(25.0),
                                onTap: onPressedAdd,
                                child: Container(
                                  padding: EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    color: theme.primaryColor,
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
