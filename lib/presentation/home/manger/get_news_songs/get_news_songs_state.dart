import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';

part 'get_news_songs_state.freezed.dart';

@freezed
class GetNewsSongsState with _$GetNewsSongsState {
  const factory GetNewsSongsState.initial() = _Initial;
  const factory GetNewsSongsState.loading() = GetNewsSongsLoading;
  const factory GetNewsSongsState.success(List<SongEntity> songs) =
      GetNewsSongsSuccess;
  const factory GetNewsSongsState.failure(String errorMessage) =
      GetNewsSongsFailure;
}
