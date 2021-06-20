part of '../search_page.dart';

class _ResultAllProductSection extends StatelessWidget {
  final List? itemCount;

  const _ResultAllProductSection({Key? key, this.itemCount}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: itemCount!.length,
      scrollDirection: Axis.vertical,
      physics: ScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
      itemBuilder: (BuildContext context, int index) {
        return _BuildProductGridCard(
          product: itemCount![index],
          onPressed: () {
            Get.toNamed(
              Routes.product,
              arguments: itemCount![index],
            );
          },
        );
      },
      staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    ));
  }
}
