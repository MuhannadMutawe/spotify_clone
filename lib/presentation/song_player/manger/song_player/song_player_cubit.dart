import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:spotify_app/presentation/song_player/manger/song_player/song_player_state.dart';

class SongPlayerCubit extends Cubit<SongPlayerState> {
  // SongPlayerCubit() : super(SongPlayerState.initial());

  AudioPlayer audioPlayer = AudioPlayer();

  Duration songDuration = Duration.zero;
  Duration songPosition = Duration.zero;
  StreamSubscription? positionSub;
  StreamSubscription? durationSub;

  SongPlayerCubit({required songUrl}) : super(SongPlayerState.initial()) {
    loadSong(songUrl);
    emit(SongPlayerState.loading());
    positionSub = audioPlayer.positionStream.listen((position) {
      songPosition = position;
      updateSongPlayer();
    });

    durationSub = audioPlayer.durationStream.listen((duration) {
      if (duration != null) {
        songDuration = duration;
      }
    });
  }

  void updateSongPlayer() {
    emit(
      SongPlayerState.success(
        position: songPosition.inSeconds.toDouble(),
        duration: songDuration.inSeconds.toDouble(),
        isPlaying: audioPlayer.playing,
      ),
    );
  }

  Future<void> loadSong(String url) async {
    try {
      await audioPlayer.setUrl(url);
      emit(
        SongPlayerState.success(
          position: songPosition.inSeconds.toDouble(),
          duration: songDuration.inSeconds.toDouble(),
          isPlaying: audioPlayer.playing,
        ),
      );
    } catch (e) {
      emit(SongPlayerState.failure());
    }
  }

  void playOrPauseSong() {
    if (audioPlayer.playing) {
      audioPlayer.pause();
    } else {
      audioPlayer.play();
    }
    emit(
      SongPlayerState.success(
        position: songPosition.inSeconds.toDouble(),
        duration: songDuration.inSeconds.toDouble(),
        isPlaying: audioPlayer.playing,
      ),
    );
  }

  void skipForward() {
    final newPosition = songPosition + const Duration(seconds: 10);

    audioPlayer.seek(
      newPosition > songDuration ? songDuration : newPosition,
    );
  }

  void skipBackward() {
    final newPosition = songPosition - const Duration(seconds: 10);

    audioPlayer.seek(
      newPosition < Duration.zero ? Duration.zero : newPosition,
    );
  }

  @override
  Future<void> close() {
    positionSub?.cancel();
    durationSub?.cancel();
    audioPlayer.dispose();
    return super.close();
  }
}
