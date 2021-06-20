part of '../product_page.dart';

class _HeaderSection extends StatelessWidget {
  final TacoProductModel product;
  final ValueChanged<int> onIndexChanged;
  final int imageIndex;
  final VoidCallback? onImageViewTap;

  const _HeaderSection(
      {Key? key,
      required this.product,
      required this.onIndexChanged,
      required this.imageIndex,
      this.onImageViewTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          height: 280.0,
          child: Stack(
            children: [
              Swiper(
                itemCount: product.images!.length,
                autoplay: false,
                onIndexChanged: onIndexChanged,
                itemBuilder: (context, index) {
                  var images = product.images![index]["url"].toString();
                  return GestureDetector(
                    onTap: onImageViewTap,
                    child: CustomNetworkImage(image: images),
                  );
                },
              ),
              Positioned(
                bottom: 50.0,
                left: Const.margin,
                child: CustomDotsIndicator(
                  dotsCount: product.images,
                  position: imageIndex,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: Const.margin,
          left: Const.margin,
          child: InkWell(
            borderRadius: BorderRadius.circular(25.0),
            onTap: () => Get.back(),
            child: CircleAvatar(
              radius: 20.0,
              child: Icon(Icons.arrow_back, color: Colors.white),
              backgroundColor: Colors.black45,
            ),
          ),
        ),
       /* Positioned(
          top: Const.margin,
          right: Const.margin,
          child: InkWell(
            borderRadius: BorderRadius.circular(25.0),
            onTap: () => Get.toNamed(Routes.cart),
            child: CircleAvatar(
              radius: 20.0,
              child: Icon(FeatherIcons.shoppingCart, color: Colors.white),
              backgroundColor: Colors.black45,
            ),
          ),
        ),*/
      ],
    );
  }
}
