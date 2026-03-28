import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/domain/usecases/song/get_news_songs_use_case.dart';
import 'package:spotify_app/presentation/home/manger/get_news_songs/get_news_songs_state.dart';

class GetNewsSongsCubit extends Cubit<GetNewsSongsState> {
  GetNewsSongsCubit(this.getNewsSongsUseCase)
    : super(GetNewsSongsState.initial());

  final GetNewsSongsUseCase getNewsSongsUseCase;

  Future<void> getNewsSongs() async {
    emit(GetNewsSongsState.loading());
    var response = await getNewsSongsUseCase.call();
    response.fold(
      (errorMessage) {
        emit(GetNewsSongsState.failure(errorMessage));
      },
      (songs) {
        emit(GetNewsSongsState.success(songs));
      },
    );
  }
}
