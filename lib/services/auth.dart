import 'package:firebase_auth/firebase_auth.dart';

import '../screens/models.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object based on Firebase User
  Use? _userFromUser(User user) {
    // ignore: unnecessary_null_comparison
    if (user != null) {
      return Use(uid: user.uid);
    } else {
      return null;
    }
  }

  //sign in anonymous user
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
