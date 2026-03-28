import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:spotify_app/data/sources/song/song_firebase_source.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';
import 'package:spotify_app/domain/repository/song/song_repository.dart';

class SongRepositoryImplementation extends SongRepository {
  final SongFirebaseSource songFirebaseSource;

  SongRepositoryImplementation(this.songFirebaseSource);

  @override
  Future<Either<String, List<SongEntity>>> getNewsSongs() async {
    try {
      List<SongEntity> songs = await songFirebaseSource.getNewsSong();
      return Right(songs);
    } on FirebaseException catch (e) {
      return Left('Error is ${handleFirebaseError(e)}');
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }
}

String handleFirebaseError(FirebaseException e) {
  switch (e.code) {
    case 'permission-denied':
      return 'You do not have permission.';
    case 'not-found':
      return 'Data not found.';
    case 'already-exists':
      return 'Document already exists.';
    case 'unavailable':
      return 'Service unavailable. Try again.';
    case 'invalid-argument':
      return 'Invalid data provided.';
    case 'deadline-exceeded':
      return 'Request timeout.';
    default:
      return 'Unexpected error occurred.';
  }
}
