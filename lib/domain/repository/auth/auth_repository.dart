import '../../../data/models/auth/create_user_req.dart';

abstract class AuthRepository {
  Future<void> signup(CreateUserReq user);

  Future<void> signin();
}
