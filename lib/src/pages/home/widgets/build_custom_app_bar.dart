part of '../home_page.dart';

class _CustomAppBar extends StatelessWidget {
  final VoidCallback onChatTap;
  final VoidCallback onSearchTap;

  const _CustomAppBar({
    Key? key,
    required this.onChatTap,
    required this.onSearchTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: 70.0,
      left: 0.0,
      right: 0.0,
      top: 0.0,
      child: CustomAppBar(context,
          title: '',
          enableLeading: false,
          backgroundColor: Colors.transparent,
          actions: [
            /* IconButton(
              icon: Icon(FeatherIcons.search),
              color: ColorLight.fontTitle,
              tooltip: AppLocalizations.of(context)!.search,
              onPressed: onSearchTap,
            ), */
            // IconButton(
            //   icon: Icon(FeatherIcons.messageSquare),
            //   color: ColorLight.fontTitle,
            //   tooltip: AppLocalizations.of(context)!.chat,
            //   onPressed: onChatTap,
            // ),
          ]),
    );
  }
}
