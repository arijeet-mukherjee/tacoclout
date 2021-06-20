part of 'providers.dart';

FirebaseAuth firebaseAuth = FirebaseAuth.instance;
DatabaseReference dbRef = FirebaseDatabase.instance.reference().child("Users");

class SignUpProvider with ChangeNotifier {
  bool? _isLoading = false;
  bool? get isLoading => _isLoading;
  set isLoading(bool? val) {
    _isLoading = val;
    notifyListeners();
  }

  Future<void> signUp(BuildContext context, {required String fullName}) {
    isLoading = true;
    return Future.delayed(Duration(seconds: 3), () {
      showToast(
        msg: AppLocalizations.of(context)!.registered_as + " " + fullName,
      );
      Get.offAllNamed(Routes.home);
      isLoading = false;
    });
  }

  Future<String> signUpFirebase(BuildContext context,
      {required String fullName,
      required String email,
      required String password}) async {
    try {
      _isLoading = true;
      await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => dbRef
              .child(value.user!.uid)
              .set({"name": fullName, "email": email}));

      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('email', email);
      prefs.setString('name', fullName);
      showToast(
        msg: AppLocalizations.of(context)!.authenticated_as + " " + email,
      );
      
      Get.offAllNamed(Routes.home);
      _isLoading = false;
      return "Signed UP!";
    } on Exception catch (e) {
      showToast(
        msg: e.toString(),
      );
      _isLoading = false;
      return e.toString();
    }
  }
}
