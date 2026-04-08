import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/domain/usecases/auth/get_user_use_case.dart';
import 'package:spotify_app/presentation/profile/manger/get_user_cubit/get_user_state.dart';

class GetUserCubit extends Cubit<GetUserState> {
  GetUserCubit(this.getUserUseCase) : super(GetUserState.initial());

  final GetUserUseCase getUserUseCase;

  Future<void> getUser() async {
    var respones = await getUserUseCase.call();
    respones.fold(
      (errorMessage) {
        emit(GetUserState.failure(errorMessage));
      },
      (user) {
        emit(GetUserState.success(user));
      },
    );
  }
}
