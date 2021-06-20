import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shuppy/src/helpers/constants.dart';
import 'package:shuppy/src/helpers/local_data.dart';
import 'package:shuppy/src/helpers/snack_toast.dart';
import 'package:shuppy/src/models/notification_model.dart';




class BuildOrderHistoryCard extends StatelessWidget {
  final VoidCallback? onDeleteTap;
  final NotificationModel notification;

  const BuildOrderHistoryCard(
      {Key? key, this.onDeleteTap, required this.notification})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    icon(String? val) {
      switch (val) {
        case 'ship':
          return Images.done;
        case 'arrive':
          return Images.package;
        case 'track':
          return Images.travelling;
        
        default:
      }
    }

    title(String? val) {
      switch (val) {
        case 'ship':
          return 'Shipping';
        case 'arrive':
          return 'Arrival';
        case 'track':
          return 'Tracking';
        
        default:
      }
    }

    subtitle(String? val) {
      switch (val) {
        case 'ship':
          return LocalList.ship;
        case 'arrive':
          return LocalList.arrive;
        case 'track':
          return LocalList.track;
        
        default:
      }
    }

    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'OK',
          color: Colors.green,
          icon: FeatherIcons.checkCircle,
          onTap: onDeleteTap,
        ),
      ],
      child: ListTile(
        leading: Image.asset(
          icon(notification.status!)!,
          width: 30.0,
          height: 30.0,
        ),
        title: Text(title(notification.status!)!,
            style: theme.textTheme.headline4),
        subtitle: Text(subtitle(notification.status!)!,
            style: theme.textTheme.subtitle2),
      ),
    );
  }
}
