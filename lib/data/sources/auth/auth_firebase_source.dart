import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_app/data/models/auth/create_user_req.dart';

abstract class AuthFirebaseSource {
  Future<void> signup(CreateUserReq user);

  Future<void> signin();
}

class AuthFirebaseSourceImplementation extends AuthFirebaseSource {
  @override
  Future<void> signin() async {}

  @override
  Future<void> signup(CreateUserReq user) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: user.email,
      password: user.password,
    );
  }
}
