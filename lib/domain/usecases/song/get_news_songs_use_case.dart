import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/usecases/use_case.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';
import 'package:spotify_app/domain/repository/song/song_repository.dart';

class GetNewsSongsUseCase
    extends UseCase<Either<String, List<SongEntity>>, dynamic> {
  final SongRepository songRepository;

  GetNewsSongsUseCase(this.songRepository);

  @override
  Future<Either<String, List<SongEntity>>> call([params]) async {
    return await songRepository.getNewsSongs();
  }
}
