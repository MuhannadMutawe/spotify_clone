import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/data/models/auth/create_user_req.dart';
import 'package:spotify_app/domain/usecases/auth/signup_use_case.dart';
import 'package:spotify_app/presentation/auth/manger/sign_up/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._signupUseCase) : super(SignUpState.initial());

  final SignupUseCase _signupUseCase;

  Future<void> signUpCubit({required CreateUserReq user}) async {
    emit(SignUpState.loading());
    var response = await _signupUseCase.call();
    response.fold(
      (errorMessage) {
        emit(SignUpState.failure(errorMessage));
      },
      (r) {
        emit(SignUpState.success());
      },
    );
  }
}
