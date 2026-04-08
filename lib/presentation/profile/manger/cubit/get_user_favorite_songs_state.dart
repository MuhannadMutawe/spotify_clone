import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';

part 'get_user_favorite_songs_state.freezed.dart';

@freezed
class GetUserFavoriteSongsState with _$GetUserFavoriteSongsState {
  const factory GetUserFavoriteSongsState.initial() = _Initial;
  const factory GetUserFavoriteSongsState.loading() =
      GetUserFavoriteSongsLoading;
  const factory GetUserFavoriteSongsState.success(List<SongEntity> songs) =
      GetUserFavoriteSongsSuccess;
  const factory GetUserFavoriteSongsState.failure(String messageError) =
      GetUserFavoriteSongsFailure;
}
