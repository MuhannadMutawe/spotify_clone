import 'package:dartz/dartz.dart';

import '../../../data/models/auth/create_user_req.dart';
import '../../../data/models/auth/signin_user_req.dart';

abstract class AuthRepository {
  Future<Either<String, String>> signup(CreateUserReq user);

  Future<Either<String, String>> signin(SignInUserReq userInfo);
}
