import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_app/data/models/auth/create_user_req.dart';
import 'package:spotify_app/data/sources/auth/auth_firebase_source.dart';
import 'package:spotify_app/domain/entities/auth/user.dart';
import 'package:spotify_app/domain/repository/auth/auth_repository.dart';

import '../../models/auth/signin_user_req.dart';

class AuthRepositoryImplementation extends AuthRepository {
  final AuthFirebaseSource authFirebaseSource;

  AuthRepositoryImplementation(this.authFirebaseSource);

  @override
  Future<Either<String, String>> signin(SignInUserReq userInfo) async {
    try {
      await authFirebaseSource.signin(userInfo);
      return Right('Sign in was Successful');
    } on FirebaseAuthException catch (e) {
      return Left('Error is ${handleAuthError(e)}');
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> signup(CreateUserReq user) async {
    try {
      await authFirebaseSource.signup(user);
      return Right('Sign up Was Successful');
    } on FirebaseAuthException catch (e) {
      return Left('Error is ${handleAuthError(e)}');
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, UserEntity>> getUser() async {
    try {
      var user = await authFirebaseSource.getUser();
      return Right(user);
    } on FirebaseAuthException catch (e) {
      return Left('Error is ${handleAuthError(e)}');
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }
}

String handleAuthError(FirebaseAuthException e) {
  switch (e.code) {
    case 'invalid-email':
      return 'The email address is invalid.';

    case 'user-disabled':
      return 'This user account has been disabled.';

    case 'user-not-found':
      return 'No user found for this email.';

    case 'wrong-password':
      return 'Incorrect password.';

    case 'email-already-in-use':
      return 'This email is already in use.';

    case 'operation-not-allowed':
      return 'This sign-in method is not enabled.';

    case 'weak-password':
      return 'The password is too weak.';

    case 'too-many-requests':
      return 'Too many requests. Try again later.';

    case 'network-request-failed':
      return 'Network error. Check your connection.';

    case 'requires-recent-login':
      return 'Please log in again to continue.';

    case 'credential-already-in-use':
      return 'This credential is already associated with another account.';

    case 'account-exists-with-different-credential':
      return 'An account already exists with the same email but different sign-in credentials.';

    case 'invalid-credential':
      return 'The credential is invalid or expired.';

    case 'invalid-verification-code':
      return 'Invalid verification code.';

    case 'invalid-verification-id':
      return 'Invalid verification ID.';

    case 'captcha-check-failed':
      return 'Captcha verification failed.';

    case 'app-not-authorized':
      return 'This app is not authorized to use Firebase Authentication.';

    case 'keychain-error':
      return 'Keychain error occurred.';

    case 'internal-error':
      return 'Internal authentication error.';

    default:
      return 'Authentication failed. Please try again.';
  }
}
