import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseAuth {
  Future<String> signIn(String email, String password);

  Future<String> signUp(String email, String password);

  Future<FirebaseUser> getCurrentUser();

  Future<void> sendEmailVerification();

  Future<void> signOut();

  Future<bool> isEmailVerified();

  Future<void> changeEmail(String email);

  Future<void> changePassword(String password);

  Future<void> deleteUser();

  Future<void> sendPasswordResetMail(String email);

  Future<void> resetPassword(String email);
}

class Auth implements BaseAuth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String> signIn(String email, String password) async {
    AuthResult result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }

  Future<void> changeEmail(String email) async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    user.updateEmail(email).then((_) {
      print("Succesfull changed email");
    }).catchError((error) {
      print("email can't be changed" + error.toString());
    });
    return null;
  }

  Future<String> signUp(String email, String password) async {
    AuthResult result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }

  Future<void> changePassword(String password) async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    user.updatePassword(password).then((_) {
      print("Succesfull changed password");
    }).catchError((error) {
      print("Password can't be changed" + error.toString());
    });
    return null;
  }

  Future<void> sendPasswordResetMail(String email) async {
    print("Called");
  }

  Future<void> resetPassword(String email) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  Future<FirebaseUser> getCurrentUser() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    return user;
  }

  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }

  Future<void> deleteUser() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    user.delete().then((_) {
      print("Succesfull user deleted");
    }).catchError((error) {
      print("user can't be delete" + error.toString());
    });
    return null;
  }

  Future<void> sendEmailVerification() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    user.sendEmailVerification();
  }

  Future<bool> isEmailVerified() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    return user.isEmailVerified;
  }
}
