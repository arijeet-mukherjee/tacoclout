part of '../sign_up_page.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  TextEditingController? _fullNameController;
  TextEditingController? _emailController;
  TextEditingController? _passwordController;
  TextEditingController? _confirmPasswordController;

  void check_if_already_login() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var email = prefs.getString('email');
    if (email != null) {
      Get.toNamed(Routes.home);
    }
    //return email == null ? false : true;
  }

  @override
  void initState() {
    super.initState();
    _fullNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, state, snapshot) {
      return Scaffold(
        appBar: CustomAppBar(context),
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: Const.margin),
            children: [
              _HeaderSection(
                image: state.isDarkTheme == false
                    ? Images.logo_light
                    : Images.logo_dark,
              ),
              SizedBox(height: 50.0),
              _BodySection(
                fullNameController: _fullNameController,
                emailController: _emailController,
                passwordController: _passwordController,
                confirmPasswordController: _confirmPasswordController,
                obscureText: _obscureText,
                onObscureTextTap: () {
                  setState(() => _obscureText = !_obscureText);
                },
                onSignUpTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  check_if_already_login();
                  
                  if (_formKey.currentState!.validate()) {
                    context.read<SignUpProvider>().signUpFirebase(context,
                        fullName: _fullNameController!.text,
                        email: _emailController!.text,
                        password: _passwordController!.text);
                    //CircularProgressIndicator();
                  }
                },
              ),
              SizedBox(height: Const.space25),
              _FooterSection(
                onSignUpTap: () => Get.back(),
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
