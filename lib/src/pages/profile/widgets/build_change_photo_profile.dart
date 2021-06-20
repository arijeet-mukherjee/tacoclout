part of '../profile_page.dart';


class _BuildChangePhotoProfile extends StatelessWidget {
  final File? imageFile;
  final VoidCallback? onChangeImageTap;

  const _BuildChangePhotoProfile(
      {Key? key, this.imageFile, this.onChangeImageTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 150.0,
      height: 150.0,
      alignment: Alignment.center,
      child: Stack(
        children: [
          CircleAvatar(
            radius: 100.0,
            backgroundImage: (imageFile == null
                ? NetworkImage(
                    'https://i.pinimg.com/564x/d4/a7/28/d4a72868e14074fce5f1e72f2e4f727c.jpg')
                : FileImage(imageFile!)) as ImageProvider<Object>?,
          ),
          Positioned(
            top: 0.0,
            right: 20.0,
            child: InkWell(
              borderRadius: BorderRadius.circular(25.0),
              onTap: onChangeImageTap,
              child: CircleAvatar(
                radius: 20.0,
                backgroundColor: theme.primaryColor,
                child: Icon(
                  Icons.photo_camera,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
