import 'package:flutter/material.dart';
import 'package:shuppy/src/helpers/constants.dart';
import 'package:shuppy/src/helpers/local_data.dart';
import 'package:shuppy/src/widgets/custom_app_bar.dart';

class DisclaimerScreen extends StatefulWidget {
  @override
  _DisclaimerScreenState createState() => _DisclaimerScreenState();
}

class _DisclaimerScreenState extends State<DisclaimerScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar:
          CustomAppBar(context, title: 'Disclaimers'),
      /* body: Text(LocalList.disclaimerText,
      style: theme.textTheme.headline4) */
      body : Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin,vertical: Const.space15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(LocalList.disclaimerText, style: theme.textTheme.bodyText2),
          
        ],
      ),
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
