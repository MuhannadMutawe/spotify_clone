import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spotify_app/data/models/song/song_model.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';

abstract class SongFirebaseSource {
  Future<List<SongEntity>> getNewsSong();
  Future<List<SongEntity>> getPlayList();
}

class SongFirebaseSourceImplementation extends SongFirebaseSource {
  @override
  Future<List<SongEntity>> getNewsSong() async {
    List<SongEntity> songs = [];
    var data = await FirebaseFirestore.instance
        .collection('Songs')
        .orderBy('releaseDate', descending: true)
        .limit(4)
        .get();
    for (var element in data.docs) {
      var songModel = SongModel.fromJsom(element.data());
      songs.add(songModel.toEntity());
    }
    return songs;
  }

  @override
  Future<List<SongEntity>> getPlayList() async {
    List<SongEntity> songs = [];
    var data = await FirebaseFirestore.instance
        .collection('Songs')
        .orderBy('releaseDate', descending: true)
        .get();
    for (var element in data.docs) {
      var songModel = SongModel.fromJsom(element.data());
      songs.add(songModel.toEntity());
    }
    return songs;
  }
}
