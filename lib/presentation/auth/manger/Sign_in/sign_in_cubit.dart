import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/data/models/auth/signin_user_req.dart';
import 'package:spotify_app/domain/usecases/auth/signin_use_case.dart';
import 'package:spotify_app/presentation/auth/manger/Sign_in/sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this._signInUseCase) : super(SignInState.initial());

  final SignInUseCase _signInUseCase;

  Future<void> signInCubit({required SignInUserReq userInfo}) async {
    emit(SignInState.loading());
    var response = await _signInUseCase.call(userInfo);
    response.fold(
      (errorMessage) {
        emit(SignInState.failure(errorMessage));
      },
      (successMessage) {
        emit(SignInState.success());
      },
    );
  }
}
