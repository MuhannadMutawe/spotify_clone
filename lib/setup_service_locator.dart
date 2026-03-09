import 'package:get_it/get_it.dart';
import 'package:spotify_app/data/repository/auth/auth_repository_implementation.dart';
import 'package:spotify_app/data/sources/auth/auth_firebase_source.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<AuthRepositoryImplementation>(
    AuthRepositoryImplementation(AuthFirebaseSourceImplementation()),
  );
}
