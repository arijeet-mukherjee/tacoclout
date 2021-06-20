part of 'providers.dart';

class ForgotPasswordProvider with ChangeNotifier {
  bool? _isLoading = false;
  bool? get isLoading => _isLoading;
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  set isLoading(bool? val) {
    _isLoading = val;
    notifyListeners();
  }

  Future<void> resetPassword(BuildContext context,{required String email}) async {
    isLoading = true;
    await firebaseAuth.sendPasswordResetEmail(email: email);
    return Future.delayed(Duration(seconds: 3), () {
      
      Dialogs.alertSuccess(
        context,
        title: AppLocalizations.of(context)!.successfully,
        subtitle: AppLocalizations.of(context)!
            .your_password_has_been_changed_please_check_your_email_inbox,
        buttonLabel: AppLocalizations.of(context)!.confirm,
        onTap: (){
          Get.back();
          Get.back();
        }
      );
      isLoading = false;
    });
  }
}
