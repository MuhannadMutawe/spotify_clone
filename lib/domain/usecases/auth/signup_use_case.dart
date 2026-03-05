import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/usecases/use_case.dart';
import 'package:spotify_app/domain/repository/auth/auth_repository.dart';

import '../../../data/models/auth/create_user_req.dart';

class SignupUseCase extends UseCase<Either,CreateUserReq>{

  final AuthRepository _authRepository;

  SignupUseCase(this._authRepository);

  @override
  Future<Either> call([CreateUserReq? user]) async {
    return await _authRepository.signup(user!);
  }
}