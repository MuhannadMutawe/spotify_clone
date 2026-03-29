import 'package:dartz/dartz.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';

abstract class SongRepository {
  Future<Either<String, List<SongEntity>>> getNewsSongs();
  Future<Either<String, List<SongEntity>>> getPlayList();
}
