part of '../favorite_page.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CustomAppBar(context, title: AppLocalizations.of(context)!.favorite),
      body: (LocalList.favoriteList.length != 0)
          ? StaggeredGridView.countBuilder(
              itemCount: LocalList.favoriteList.length,
              crossAxisCount: 4,
              staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
              mainAxisSpacing: 15.0,
              crossAxisSpacing: 15.0,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              itemBuilder: (context, index) {
                var product = LocalList.favoriteList[index];
                return _BuildProductGridCard(
                  product: product.product,
                  onPressed: () {
                    Get.toNamed(Routes.product, arguments: product.product)!
                        .then((value) => setState(() {}));
                  },
                );
              },
            )
          : EmptySection(
              image: Illustrations.favorite_illustration,
              title: AppLocalizations.of(context)!
                  .your_favorite_list_is_empty_lets_find_interesting_products_and_add_them_to_favorites,
            ),
    );
  }
}

// part of '../product_page.dart';

// class BrowseProductScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     BrowseProductArgument args = Get.arguments;

//     return Scaffold(
//       appBar: CustomAppBar(context, title: args.label),
//       body:
//     );
//   }
// }
