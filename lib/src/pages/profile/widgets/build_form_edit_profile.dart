part of  '../profile_page.dart';


class _BuildFormEditProfile extends StatelessWidget {
  final TextEditingController? fullNameController;
  final TextEditingController? phoneNumberController;
  final TextEditingController? addressController;

  const _BuildFormEditProfile(
      {Key? key,
      this.fullNameController,
      this.phoneNumberController,
      this.addressController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomFadeTransition(
          duration: Duration(milliseconds: 800),
          child: Text(AppLocalizations.of(context)!.full_name,
              style: theme.textTheme.subtitle1),
        ),
        CustomFadeTransition(
          duration: Duration(milliseconds: 900),
          child: CustomTextFormField(
            controller: fullNameController,
            hintText: AppLocalizations.of(context)!.enter_your_full_name,
            textFieldType: TextFieldType.Text,
            borderType: BorderType.Underline,
          ),
        ),
        SizedBox(height: Const.space15),
        CustomFadeTransition(
          duration: Duration(milliseconds: 800),
          child: Text(AppLocalizations.of(context)!.phone_number,
              style: theme.textTheme.subtitle1),
        ),
        CustomFadeTransition(
          duration: Duration(milliseconds: 900),
          child: CustomTextFormField(
            controller: phoneNumberController,
            hintText: AppLocalizations.of(context)!.enter_phone_number,
            textFieldType: TextFieldType.PhoneNumber,
            borderType: BorderType.Underline,
          ),
        ),
        SizedBox(height: Const.space15),
        CustomFadeTransition(
          duration: Duration(milliseconds: 800),
          child: Text(AppLocalizations.of(context)!.address,
              style: theme.textTheme.subtitle1),
        ),
        CustomFadeTransition(
          duration: Duration(milliseconds: 900),
          child: CustomTextFormField(
            controller: addressController,
            hintText: AppLocalizations.of(context)!.enter_your_address,
            textFieldType: TextFieldType.Text,
            borderType: BorderType.Underline,
          ),
        ),
        SizedBox(height: Const.space15),
      ],
    );
  }
}
