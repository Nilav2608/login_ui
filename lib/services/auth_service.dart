import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  signInWithGoogle() async {
    //* let user to choose which accounnt do they want to sign in
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    //* obtain auth details from the user
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;
    //* credential
    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
