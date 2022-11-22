import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return result.user?.uid;
    } catch (error) {
      print(error);
      return null;
    }
  }

  Future registersInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return user?.uid;
    } catch (error) {
      print(error);
      return null;
    }
  }

  Future logOut() async {
    await _firebaseAuth.signOut();
  }

   
}
