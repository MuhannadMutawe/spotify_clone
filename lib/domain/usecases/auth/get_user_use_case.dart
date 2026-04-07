import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/usecases/use_case.dart';
import 'package:spotify_app/domain/entities/auth/user.dart';
import 'package:spotify_app/domain/repository/auth/auth_repository.dart';

class GetUserUseCase implements UseCase<Either<String, UserEntity>, Null> {
  final AuthRepository _authRepository;

  GetUserUseCase(this._authRepository);

  @override
  Future<Either<String, UserEntity>> call([Null params]) async {
    return await _authRepository.getUser();
  }
}
