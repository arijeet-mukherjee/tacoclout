part of '../on_boarding_page.dart';

class OnBoardingCard extends StatelessWidget {
  final OnBoardingModel? data;

  const OnBoardingCard({Key? key, this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: [
          CustomShakeTransition(
            duration: Duration(milliseconds: 500),
            child: Image.asset(
              data!.image!,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),
          Spacer(),
          CustomShakeTransition(
            duration: Duration(milliseconds: 700),
            child: Text(
              data!.title!,
              style: theme.textTheme.headline1,
            ),
          ),
          SizedBox(height: 25.0),
          CustomShakeTransition(
            duration: Duration(milliseconds: 900),
            child: Text(
              data!.subtitle!,
              style: theme.textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
