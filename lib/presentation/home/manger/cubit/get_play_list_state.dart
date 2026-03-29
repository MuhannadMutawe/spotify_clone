import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';

part 'get_play_list_state.freezed.dart';

@freezed
class GetPlayListState with _$GetPlayListState {
  const factory GetPlayListState.initial() = _Initial;
  const factory GetPlayListState.loading() = GetPlayListLoading;
  const factory GetPlayListState.success(List<SongEntity> songs) =
      GetPlayListSuccess;
  const factory GetPlayListState.failure(String errorMessage) =
      GetPlayListFailure;
}
