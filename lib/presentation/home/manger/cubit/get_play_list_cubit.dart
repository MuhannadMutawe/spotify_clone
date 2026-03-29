import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/domain/usecases/song/get_play_list_use_case.dart';
import 'package:spotify_app/presentation/home/manger/cubit/get_play_list_state.dart';

class GetPlayListCubit extends Cubit<GetPlayListState> {
  GetPlayListCubit(this.getPlayListUseCase) : super(GetPlayListState.initial());

  final GetPlayListUseCase getPlayListUseCase;

  Future<void> getPlayList() async {
    emit(GetPlayListState.loading());
    var response = await getPlayListUseCase.call();
    response.fold(
      (errorMessage) {
        emit(GetPlayListState.failure(errorMessage));
      },
      (songs) {
        emit(GetPlayListState.success(songs));
      },
    );
  }
}
