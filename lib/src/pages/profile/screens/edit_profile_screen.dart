part of '../profile_page.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController? _fullNameController;
  TextEditingController? _phoneNumberController;
  TextEditingController? _addressController;

  @override
  void initState() {
    super.initState();
    UserModel args = Get.arguments;
    _fullNameController = TextEditingController(text: args.fullName);
    _phoneNumberController = TextEditingController(text: args.phoneNumber);
    _addressController = TextEditingController(text: args.address);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.edit_profile,
        actions: [
          CustomTextButton(
            label: AppLocalizations.of(context)!.save,
            textColor: theme.primaryColor,
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
              Get.back();
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          _BuildChangePhotoProfile(
            onChangeImageTap: () async {
              showToast(msg: 'Change profile photo tapped');
            },
          ),
          SizedBox(height: Const.space25),
          _BuildFormEditProfile(
            fullNameController: _fullNameController,
            phoneNumberController: _phoneNumberController,
            addressController: _addressController,
          ),
        ],
      ),
    );
  }
}
