import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationProvider {
  //Login Provider functions
  Future<UserCredential> signInWithEmailPass({required String email, required String password}) async {
   return await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  }

  //Registration provider functions
  createUserWithEmailPass({required String email, required String password}) {}
}
