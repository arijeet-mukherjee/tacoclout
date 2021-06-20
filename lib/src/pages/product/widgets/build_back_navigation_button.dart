part of '../product_page.dart';

class _BuildBackNavigationButton extends StatelessWidget {
  const _BuildBackNavigationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}
