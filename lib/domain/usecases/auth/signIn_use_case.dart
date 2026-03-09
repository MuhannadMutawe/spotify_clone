import 'package:dartz/dartz.dart';
import 'package:spotify_app/data/models/auth/signin_user_req.dart';

import '../../../core/usecases/use_case.dart';
import '../../repository/auth/auth_repository.dart';

class SignInUseCase implements UseCase<Either,SignInUserReq> {

  final AuthRepository _authRepository;

  SignInUseCase(this._authRepository);

  @override
  Future<Either> call([SignInUserReq? userInfo]) async {
    return await _authRepository.signin(userInfo!);
  }

}