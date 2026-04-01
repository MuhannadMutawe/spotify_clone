import 'package:freezed_annotation/freezed_annotation.dart';

part 'song_player_state.freezed.dart';

@freezed
class SongPlayerState with _$SongPlayerState {
  const factory SongPlayerState.initial() = _Initial;
  const factory SongPlayerState.loading() = SongPlayerLoading;
  const factory SongPlayerState.success({
    required double position,
    required double duration,
    required bool isPlaying,
  }) = SongPlayerSuccess;
  const factory SongPlayerState.failure() = SongPlayerFailure;
}
