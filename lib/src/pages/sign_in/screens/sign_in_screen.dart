part of '../sign_in_page.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  TextEditingController? _emailController;
  TextEditingController? _passwordController;
  //late SharedPreferences logindata;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  void check_if_already_login() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var email = prefs.getString('email');
    if (email != null) {
      Get.toNamed(Routes.home);
    }
    //return email == null ? false : true;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, state, snapshot) {
      return Scaffold(
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: Const.margin),
            children: [
              SizedBox(height: 50.0),
              _HeaderSection(
                image: state.isDarkTheme == false
                    ? Images.logo_light
                    : Images.logo_dark,
              ),
              SizedBox(height: 50.0),
              _BodySection(
                emailController: _emailController,
                passwordController: _passwordController,
                onForgotPasswordTap: () => Get.toNamed(Routes.forgot_password),
                obscureText: _obscureText,
                onObscureTextTap: () {
                  setState(() => _obscureText = !_obscureText);
                },
                onSignInTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  check_if_already_login();
                  if (_formKey.currentState!.validate()) {
                    context
                        .read<SignInProvider>()
                        //.signIn(context, email: _emailController!.text);
                        .signInFirebase(context, email: _emailController!.text,password: _passwordController!.text);
                  }
                },
              ),
              SizedBox(height: Const.space25),
              _FooterSection(
                onSignUpTap: () => Get.toNamed(Routes.sign_up),
                onFacebookTap: () =>
                    showToast(msg: AppLocalizations.of(context)!.facebook),
                onGoogleTap: () =>
                    showToast(msg: AppLocalizations.of(context)!.google),
              ),
            ],
          ),
        ),
      );
    });
  }
}
