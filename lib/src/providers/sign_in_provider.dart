part of 'providers.dart';

class SignInProvider with ChangeNotifier {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  //FirebaseUserModel userModel = FirebaseUserModel();

  //FirebaseAuth instance
  // SignInProvider(this.firebaseAuth);
  bool? _isLoading = false;
  bool? get isLoading => _isLoading;
  set isLoading(bool? val) {
    _isLoading = val;
    notifyListeners();
  }

  Future<void> signIn(BuildContext context, {required String email}) {
    isLoading = true;
    return Future.delayed(Duration(seconds: 3), () async {
      showToast(
        msg: AppLocalizations.of(context)!.authenticated_as + " " + email,
      );
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('email', email);
      Get.offAllNamed(Routes.home);
      isLoading = false;
    });
  }

  //SIGN IN METHOD
  Future<String> signInFirebase(BuildContext context,
      {required String email, required String password}) async {
    try {
      _isLoading = true;
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      //Future.delayed(Duration(seconds: 3), () => {});
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('email', email);

      showToast(
        msg: AppLocalizations.of(context)!.authenticated_as + " " + email,
      );
      Get.offAllNamed(Routes.home);
      _isLoading = false;
      return "Signed in!";
    } on Exception catch (e) {
      showToast(
        msg: e.toString(),
      );
      return e.toString();
    }
  }
}
