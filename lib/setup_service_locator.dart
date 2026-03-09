import 'package:get_it/get_it.dart';
import 'package:spotify_app/data/repository/auth/auth_repository_implementation.dart';
import 'package:spotify_app/data/sources/auth/auth_firebase_source.dart';
import 'package:spotify_app/domain/usecases/auth/signin_use_case.dart';
import 'package:spotify_app/domain/usecases/auth/signup_use_case.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<SignInUseCase>(
    SignInUseCase(
      AuthRepositoryImplementation(
        AuthFirebaseSourceImplementation(),
      ),
    ),
  );

  getIt.registerSingleton<SignupUseCase>(
    SignupUseCase(
      AuthRepositoryImplementation(
        AuthFirebaseSourceImplementation(),
      ),
    ),
  );
}
