part of '../address_page.dart';

class AddressScreen extends StatefulWidget {
  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  TextEditingController? _addressController;

  @override
  void initState() {
    super.initState();
    _addressController = TextEditingController();
  }

  @override
  void dispose() {
    _addressController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(context,
          title: AppLocalizations.of(context)!.change_address,
          actions: [
            CustomTextButton(
                textColor: theme.primaryColor,
                label: AppLocalizations.of(context)!.done,
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  Get.back();
                }),
          ]),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: Const.margin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Const.space25),
            Text(
              AppLocalizations.of(context)!.change_delivery_address,
              style: theme.textTheme.headline2,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: Const.space12),
            Text(
              AppLocalizations.of(context)!
                  .please_enter_your_full_address_correctly,
              style: theme.textTheme.subtitle1,
              textAlign: TextAlign.left,
            ),
            SizedBox(height: Const.space25),
            Text(
              AppLocalizations.of(context)!.address,
              style: theme.textTheme.subtitle1,
              textAlign: TextAlign.left,
            ),
            CustomTextFormField(
              controller: _addressController,
              hintText: AppLocalizations.of(context)!.destination_address,
              borderType: BorderType.Underline,
            ),
            SizedBox(height: Const.space25),
          ],
        ),
      ),
    );
  }
}
