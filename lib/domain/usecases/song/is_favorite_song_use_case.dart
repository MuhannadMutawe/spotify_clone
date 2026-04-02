import 'package:spotify_app/core/usecases/use_case.dart';
import 'package:spotify_app/domain/repository/song/song_repository.dart';

class IsFavoriteSongUseCase extends UseCase<bool, String> {
  final SongRepository songRepository;

  IsFavoriteSongUseCase(this.songRepository);

  @override
  Future<bool> call([String? songId]) async {
    return await songRepository.isFavoriteSong(songId!);
  }
}
