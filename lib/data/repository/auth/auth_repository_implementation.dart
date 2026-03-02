import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_app/data/models/auth/create_user_req.dart';
import 'package:spotify_app/data/sources/auth/auth_firebase_source.dart';
import 'package:spotify_app/domain/repository/auth/auth_repository.dart';

class AuthRepositoryImplementation extends AuthRepository {

  final AuthFirebaseSource authFirebaseSource;

  AuthRepositoryImplementation(this.authFirebaseSource);

  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<void> signup(CreateUserReq user) async {
    try {
      await authFirebaseSource.signup(user);

    } on FirebaseAuthException catch(e){

    } on Exception catch(e){

    }
  }

}