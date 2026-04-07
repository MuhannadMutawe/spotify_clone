import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_app/core/config/constants/app_urls.dart';
import 'package:spotify_app/data/models/auth/create_user_req.dart';
import 'package:spotify_app/data/models/auth/signin_user_req.dart';
import 'package:spotify_app/data/models/auth/user.dart';
import 'package:spotify_app/domain/entities/auth/user.dart';

abstract class AuthFirebaseSource {
  Future<void> signup(CreateUserReq user);

  Future<void> signin(SignInUserReq userInfo);

  Future<UserEntity> getUser();
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
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(data.user?.uid)
        .set({
          'name': user.fullName,
          'email': data.user?.email,
        });
  }

  @override
  Future<UserEntity> getUser() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    var user = await firebaseFirestore
        .collection('Users')
        .doc(firebaseAuth.currentUser?.uid)
        .get();

    UserModel userModel = UserModel.fromJson(user.data()!);
    userModel.imageURL =
        firebaseAuth.currentUser?.photoURL ?? AppURLs.defaultImage;
    UserEntity userEntity = userModel.toEntity();
    return userEntity;
  }
}
