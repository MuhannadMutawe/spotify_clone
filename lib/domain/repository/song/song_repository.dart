import 'package:dartz/dartz.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';

abstract class SongRepository {
  Future<Either<String, List<SongEntity>>> getNewsSongs();
  Future<Either<String, List<SongEntity>>> getPlayList();
  Future<Either<String, bool>> addOrRemoveFavoriteSong(
    String songId,
  );
  Future<bool> isFavoriteSong(String songId);
  Future<Either<String, List<SongEntity>>> getUserFavoriteSongs();
}
