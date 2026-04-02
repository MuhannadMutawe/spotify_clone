import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/usecases/use_case.dart';
import 'package:spotify_app/domain/repository/song/song_repository.dart';

class AddOrRemoveFavoriteSongUseCase
    extends UseCase<Either<String, bool>, String> {
  final SongRepository songRepository;

  AddOrRemoveFavoriteSongUseCase(this.songRepository);

  @override
  Future<Either<String, bool>> call([String? songId]) async {
    return await songRepository.addOrRemoveFavoriteSong(songId!);
  }
}
