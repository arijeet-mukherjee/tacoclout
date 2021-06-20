import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shuppy/src/models/arguments_model.dart';
import 'package:shuppy/src/widgets/custom_app_bar.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebviewCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //WebviewArgument args = Get.arguments;
    print('https://www.tacoclout.com/cart');
    return WebviewScaffold(
      url: 'https://www.tacoclout.com/cart?mobileapp=true',
      appBar: CustomAppBar(context, title: 'Your Bag'),
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
