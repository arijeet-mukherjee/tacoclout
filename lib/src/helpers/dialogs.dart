import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_outlined_button.dart';
import 'constants.dart';

class Dialogs {
  static Future alertSuccess(BuildContext context,
      {required String title,
      required String subtitle,
      VoidCallback? onTap,
      String? buttonLabel}) {
    final theme = Theme.of(context);
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                Images.done,
                width: MediaQuery.of(context).size.width / 4,
              ),
              SizedBox(height: Const.space25),
              Text(
                title,
                style: theme.textTheme.headline1,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Const.space12),
              Text(
                subtitle,
                style: theme.textTheme.subtitle1,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Const.space15),
              (buttonLabel == null)
                  ? SizedBox()
                  : CustomElevatedButton(
                      label: buttonLabel,
                      onTap: onTap,
                    ),
            ],
          ),
        );
      },
    );
  }

  static Future labelDialog(
    BuildContext context, {
    bool barrierDismissible = false,
    required String? title,
    required String? primaryButtonLabel,
    String? secondaryButtonLabel,
    required VoidCallback? onPrimaryButtonTap,
    VoidCallback? onSecondaryButtonTap,
  }) {
    final theme = Theme.of(context);

    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return AlertDialog(
          backgroundColor: theme.cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          content: Container(
            height: 150,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title!,
                  style: theme.textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 25.0),
                Container(
                  height: 45.0,
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomOutlinedButton(
                          onTap: (onSecondaryButtonTap == null)
                              ? () => Get.back()
                              : onSecondaryButtonTap,
                          label: (secondaryButtonLabel == null)
                              ? AppLocalizations.of(context)!.back
                              : secondaryButtonLabel,
                        ),
                      ),
                      SizedBox(width: 15.0),
                      Expanded(
                        child: CustomElevatedButton(
                          onTap: onPrimaryButtonTap,
                          label: primaryButtonLabel ?? "",
                          color: theme.primaryColor,
                          labelColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
