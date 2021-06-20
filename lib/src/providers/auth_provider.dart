import 'package:firebase_auth/firebase_auth.dart';
import 'package:shuppy/src/models/user_model.dart';

class AuthenticationProvider {
  final FirebaseAuth firebaseAuth;
  //FirebaseAuth instance
  AuthenticationProvider(this.firebaseAuth);
  //Constuctor to initalize the FirebaseAuth instance
  
  //Using Stream to listen to Authentication State
  //Stream<User> get authState => firebaseAuth.idTokenChanges();
    
  
  //............RUDIMENTARY METHODS FOR AUTHENTICATION................
  
  
  //SIGN UP METHOD
  Future<String> signUp({required String email, required String password}) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Signed up!";
    } on Exception catch (e) {
      return e.toString();
    }
  }
  
  //SIGN IN METHOD
  Future<String> signIn({required String email, required String password}) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Signed in!";
    } on Exception catch (e) {
      return e.toString();
    }
  }
  
  //SIGN OUT METHOD
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

 }