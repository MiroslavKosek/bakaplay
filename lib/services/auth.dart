// ignore_for_file: use_build_context_synchronously

import 'package:bakaplay/pages/main_page.dart';
import 'package:bakaplay/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthMethods {
  final FirebaseAuth auth = FirebaseAuth.instance;

  getCurrentUser() async {
    return auth.currentUser;
  }

  signInWithGoogle(BuildContext context) async {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    
    final GoogleSignIn googleSignIn = GoogleSignIn(clientId: '1062183347607-6aa8eje06dprpu1v4seddjbt1253gsb6.apps.googleusercontent.com');

    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

    final GoogleSignInAuthentication? googleSignInAuthentication = await googleSignInAccount?.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication?.idToken,
        accessToken: googleSignInAuthentication?.accessToken
    );

    UserCredential result = await firebaseAuth.signInWithCredential(credential);

    User? userDetails = result.user;

    Map<String, dynamic> userInfoMap = {
      "email": userDetails!.email,
      "name": userDetails.displayName,
      "imgUrl": userDetails.photoURL,
      "id": userDetails.uid
    };
    await DatabaseMethods()
        .addUser(userDetails.uid, userInfoMap)
        .then((value) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MainPage()));
    });
  }
}