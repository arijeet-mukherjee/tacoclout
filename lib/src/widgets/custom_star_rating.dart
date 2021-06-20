import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../helpers/colors.dart';
import '../providers/providers.dart';

class CustomStarRating extends StatelessWidget {
  final double rating;
  final RatingChangeCallback? onChanged;

  const CustomStarRating({Key? key,required this.rating,this.onChanged}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, state, snapshot) {
      return SmoothStarRating(
        color: (state.isDarkTheme == true)
            ? ColorDark.warning
            : ColorLight.warning,
        size: 15.0,
        allowHalfRating: true,
        rating: rating,
        borderColor: ColorLight.warning,
        starCount: 5,
        onRatingChanged: onChanged,
      );
    });
  }
}
