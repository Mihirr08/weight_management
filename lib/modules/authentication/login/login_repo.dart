import 'package:firebase_auth/firebase_auth.dart';
import 'package:weight_management_app/modules/authentication/authentication_provider/authentication_provider.dart';

class LoginRepo {
  Future<UserCredential> loginWithEmailPass(String email, String password) async {
    try {
      UserCredential response = await AuthenticationProvider()
          .signInWithEmailPass(email: email, password: password);

      return response;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        throw Exception("Invalid email");
      } else if (e.code == "wrong-password") {
        throw Exception("Incorrect password");
      } else {
        throw Exception("Some error occurred");
      }
    } catch (e) {
      throw Exception("Some error occurred");
    }
  }
}
