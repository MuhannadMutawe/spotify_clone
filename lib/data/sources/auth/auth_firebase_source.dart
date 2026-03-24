import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_app/data/models/auth/create_user_req.dart';
import 'package:spotify_app/data/models/auth/signin_user_req.dart';

abstract class AuthFirebaseSource {
  Future<void> signup(CreateUserReq user);

  Future<void> signin(SignInUserReq userInfo);
}

class AuthFirebaseSourceImplementation extends AuthFirebaseSource {
  @override
  Future<void> signin(SignInUserReq userInfo) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: userInfo.email,
      password: userInfo.password,
    );
  }

  @override
  Future<void> signup(CreateUserReq user) async {
    var data = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: user.email,
      password: user.password,
    );
    await FirebaseFirestore.instance.collection('Users').add({
      'name': user.fullName,
      'email': data.user?.email,
    });
  }
}
