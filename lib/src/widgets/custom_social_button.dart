import 'package:flutter/material.dart';

class CustomSocialButton extends StatelessWidget {
  final void Function()? onTap;

  final String? label;
  final String? logo;
  final Color? color;
  const CustomSocialButton({
    Key? key,
    this.onTap,
    this.label,
    this.logo,
    this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 50.0,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          primary: color ?? theme.primaryColor,
          elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              logo!,
              width: 40.0,
            ),
            SizedBox(width: 10.0),
            Text(
              label!,
              style: theme.textTheme.bodyText2!.copyWith(
                  color: (color == Colors.white)
                      ? Color(0xFF212121)
                      : Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
