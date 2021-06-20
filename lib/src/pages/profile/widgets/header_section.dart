part of '../profile_page.dart';

class _HeaderSection extends StatelessWidget {
  final String image;
  final String fullName;
  final String email;

  const _HeaderSection(
      {Key? key,
      required this.image,
      required this.fullName,
      required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomShakeTransition(
      child: Container(
        child: Row(
          children: [
            CircleAvatar(
              radius: 45.0,
              backgroundImage: NetworkImage(image),
            ),
            SizedBox(width: Const.space25),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fullName,
                    style: theme.textTheme.headline3,
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    email,
                    style: theme.textTheme.subtitle2,
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
