part of '../sign_in_page.dart';

class _BodySection extends StatelessWidget {
  final TextEditingController? emailController;
  final TextEditingController? passwordController;
  final VoidCallback? onSignInTap;
  final VoidCallback? onForgotPasswordTap;
  final VoidCallback? onObscureTextTap;
  final bool? obscureText;

  const _BodySection({
    Key? key,
    this.emailController,
    this.passwordController,
    this.onSignInTap,
    this.onForgotPasswordTap,
    this.onObscureTextTap,
    this.obscureText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Consumer<SignInProvider>(builder: (context, state, snapshot) {
      return Card(
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: Const.margin, vertical: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomFadeTransition(
                duration: Duration(milliseconds: 500),
                child: Text(
                  AppLocalizations.of(context)!.welcome,
                  style: theme.textTheme.headline2,
                ),
              ),
              SizedBox(height: 8.0),
              CustomFadeTransition(
                duration: Duration(milliseconds: 600),
                child: Text(AppLocalizations.of(context)!.sign_in_to_continue,
                    style: theme.textTheme.subtitle2),
              ),
              SizedBox(height: Const.space25),
              CustomFadeTransition(
                duration: Duration(milliseconds: 800),
                child: Text(AppLocalizations.of(context)!.email,
                    style: theme.textTheme.subtitle1),
              ),
              SizedBox(height: Const.space8),
              CustomFadeTransition(
                duration: Duration(milliseconds: 900),
                child: CustomTextFormField(
                  controller: emailController,
                  hintText: AppLocalizations.of(context)!.enter_email_address,
                  textFieldType: TextFieldType.Email,
                  borderType: BorderType.Underline,
                ),
              ),
              SizedBox(height: Const.space15),
              CustomFadeTransition(
                duration: Duration(milliseconds: 800),
                child: Text(AppLocalizations.of(context)!.password,
                    style: theme.textTheme.subtitle1),
              ),
              SizedBox(height: Const.space8),
              CustomFadeTransition(
                duration: Duration(milliseconds: 900),
                child: CustomTextFormField(
                  controller: passwordController,
                  obscureText: obscureText,
                  hintText: AppLocalizations.of(context)!.enter_password,
                  textFieldType: TextFieldType.Password,
                  borderType: BorderType.Underline,
                  suffixIcon: IconButton(
                    icon: Icon((obscureText == true)
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: onObscureTextTap,
                  ),
                ),
              ),
              SizedBox(height: Const.space15),
              Align(
                alignment: Alignment.topRight,
                child: CustomFadeTransition(
                  duration: Duration(milliseconds: 1000),
                  child: CustomTextButton(
                    label: AppLocalizations.of(context)!.forgot_password,
                    onTap: onForgotPasswordTap,
                  ),
                ),
              ),
              SizedBox(height: Const.space15),
              (state.isLoading == true)
                  ? CustomLoadingIndicator()
                  : CustomFadeTransition(
                      axis: Axis.vertical,
                      duration: Duration(milliseconds: 1100),
                      child: CustomElevatedButton(
                        label: AppLocalizations.of(context)!.sign_in,
                        onTap: onSignInTap,
                      ),
                    )
            ],
          ),
        ),
      );
    });
  }
}
