part of '../forgot_password_page.dart';

class _BodySection extends StatelessWidget {
  final TextEditingController? emailController;
  final VoidCallback? onResetTap;

  const _BodySection({Key? key, this.emailController, this.onResetTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Consumer<ForgotPasswordProvider>(
        builder: (context, state, snapshot) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CustomShakeTransition(
              duration: Duration(milliseconds: 800),
              child: Text(
                AppLocalizations.of(context)!.reset_password,
                style: theme.textTheme.headline1,
              ),
            ),
          ),
          SizedBox(height: Const.space25),
          CustomShakeTransition(
            duration: Duration(milliseconds: 900),
            child: Text(
              AppLocalizations.of(context)!
                  .please_enter_the_email_address_you_used_at_the_time_of_registration_to_get_the_password_reset_instructions,
              style: theme.textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: Const.space25),
          CustomFadeTransition(
            duration: Duration(milliseconds: 400),
            child: Text(AppLocalizations.of(context)!.email,
                style: theme.textTheme.subtitle1),
          ),
          SizedBox(height: Const.space8),
          CustomFadeTransition(
            duration: Duration(milliseconds: 500),
            child: CustomTextFormField(
              controller: emailController,
              hintText: AppLocalizations.of(context)!.enter_email_address,
              textFieldType: TextFieldType.Email,
              borderType: BorderType.Underline,
            ),
          ),
          SizedBox(height: Const.space25),
          (state.isLoading == true)
              ? CustomLoadingIndicator()
              : CustomFadeTransition(
                  axis: Axis.vertical,
                  duration: Duration(milliseconds: 600),
                  child: CustomElevatedButton(
                    label: AppLocalizations.of(context)!.reset,
                    onTap: onResetTap,
                  ),
                ),
        ],
      );
    });
  }
}
