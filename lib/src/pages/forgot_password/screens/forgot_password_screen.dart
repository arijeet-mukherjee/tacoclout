part of '../forgot_password_page.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController? _emailController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.forgot_password,
      ),
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: Const.margin),
          children: [
            _HeaderSection(
              image: Illustrations.forgot_password,
            ),
            SizedBox(height: Const.space25),
            _BodySection(
              emailController: _emailController,
              onResetTap: () {
                if (_formKey.currentState!.validate()) {
                 context.read<ForgotPasswordProvider>().resetPassword(context,email: _emailController!.text);
                }else{
                  print('');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
