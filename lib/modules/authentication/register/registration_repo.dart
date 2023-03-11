import 'package:firebase_auth/firebase_auth.dart';
import 'package:weight_management_app/modules/authentication/authentication_provider/authentication_provider.dart';

class RegistrationRepo {
  registerWithEmailPass(String email, String password) async {
    try {
      await AuthenticationProvider()
          .createUserWithEmailPass(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        throw Exception("Your password is too weak");
      } else if (e.code == "email-already-in-use") {
        throw Exception("Email is already in use");
      } else {
        throw Exception("Some error occurred");
      }
    } catch (e) {
      throw Exception("Some error occurred");
    }
  }
}
