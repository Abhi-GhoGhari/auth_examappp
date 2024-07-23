import 'package:auth_examappp/headers.dart';

class AuthHelper {
  AuthHelper._();

  static final AuthHelper instance = AuthHelper._();
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<User?> register(
      {required String email, required String password}) async {
    User? user;
    try {
      UserCredential credential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      user = credential.user;
    } catch (e) {}
    return user;
  }

  Future<User?> signIn(
      {required String email, required String password}) async {
    User? user;
    try {
      UserCredential credential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = credential.user;
    } catch (e) {}
    return user;
  }

  Future<void> logOut() async {
    await auth.signOut();
    await GoogleSignIn().signOut();
  }
}
