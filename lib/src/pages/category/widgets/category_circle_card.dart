part of '../category_page.dart';

class _BuildCategoryCircleCard extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  final String label;

  const _BuildCategoryCircleCard(
      {Key? key, required this.onTap, required this.icon, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        width: 85.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              elevation: 6.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              //child: CustomNetworkImage(image: icon,width: 80,height: 75,),
              child: Image.asset(icon,width: 80,height: 75,),
              /* child: Container(
                width: 50.0,
                height: 50.0,
                padding: EdgeInsets.all(10.0),
                //child: Center(child: Image.asset(icon)),
                child: CustomNetworkImage(image: icon,),
              ), */
            ),
            SizedBox(height: 8.0),
            Text(
              label,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(),
            ),
          ],
        ),
      ),
    );
  }
}
