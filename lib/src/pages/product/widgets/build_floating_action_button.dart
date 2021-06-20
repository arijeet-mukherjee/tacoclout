part of '../product_page.dart';


class _BuildFloatingActionButton extends StatelessWidget {
  final bool? isLiked;
  final TacoProductModel? product;
  final int? addToCartCounter;
  final VoidCallback? onFavoriteTap;
  final VoidCallback? onCartTap;

  const _BuildFloatingActionButton({
    Key? key,
    this.isLiked,
    this.product,
    this.addToCartCounter,
    this.onCartTap,
    this.onFavoriteTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Positioned(
      left: Const.margin,
      right: Const.margin,
      bottom: Const.margin,
      height: 60.0,
      child: Row(
        children: [
          Card(
            elevation: 6.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Container(
              width: 50.0,
              height: 50.0,
              child: Center(
                child: IconButton(
                  icon: Icon((isLiked == true)
                      ? Icons.favorite
                      : Icons.favorite_border),
                  color: theme.errorColor,
                  splashRadius: 25.0,
                  onPressed: onFavoriteTap,
                ),
              ),
            ),
          ),
          SizedBox(width: 25.0),
          Expanded(
            child: InkWell(
              onTap: onCartTap,
              child: Container(
                height: 50.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: theme.primaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    Text("Buy Now",
                        style: theme.textTheme.button),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
