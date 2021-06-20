import 'package:flutter/cupertino.dart';

class CustomLoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: CupertinoActivityIndicator(radius: 20.0));
  }
}
