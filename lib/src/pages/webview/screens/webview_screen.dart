import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:shuppy/src/helpers/colors.dart';
import 'package:shuppy/src/helpers/constants.dart';
import 'package:shuppy/src/models/arguments_model.dart';
import 'package:shuppy/src/widgets/custom_app_bar.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebviewScreen extends StatelessWidget {
  void _openCart() {
    Get.toNamed(Routes.cartWeb);
  }
  
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    WebviewArgument args = Get.arguments;
    print("https://www.tacoclout.com" + args.url);
    return WebviewScaffold(
      url: 'https://www.tacoclout.com' + args.url + "?mobileapp=true",
      appBar: CustomAppBar(context, title: args.label, actions: [
        IconButton(
          icon: Icon(FeatherIcons.shoppingCart),
          //color: ColorLight.fontTitle,
          tooltip: 'My Cart',
          onPressed: _openCart,
          color: theme.primaryColor,
        ),
        // IconButton(
        //   icon: Icon(FeatherIcons.messageSquare),
        //   color: ColorLight.fontTitle,
        //   tooltip: AppLocalizations.of(context)!.chat,
        //   onPressed: onChatTap,
        // ),
      ]),
      withZoom: true,
      withLocalStorage: true,
      scrollBar: true,
      withJavascript: true,
      hidden: true,
      initialChild: Container(
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
