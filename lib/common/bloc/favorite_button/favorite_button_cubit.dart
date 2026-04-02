import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/common/bloc/favorite_button/favorite_button_state.dart';
import 'package:spotify_app/domain/usecases/song/add_or_remove_favorite_song_use_case.dart';

class FavoriteButtonCubit extends Cubit<FavoriteButtonState> {
  FavoriteButtonCubit(this.addOrRemoveFavoriteSongUseCase)
    : super(FavoriteButtonState.initial());

  AddOrRemoveFavoriteSongUseCase addOrRemoveFavoriteSongUseCase;
  void favoriteButtonUpdate(String songId) async {
    var result = await addOrRemoveFavoriteSongUseCase.call(songId);
    result.fold(
      (l) => null,
      (isFavorite) => emit(FavoriteButtonState.updated(isFavorite)),
    );
  }
}
