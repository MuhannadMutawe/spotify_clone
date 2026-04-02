import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_app/data/models/song/song_model.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';

abstract class SongFirebaseSource {
  Future<List<SongEntity>> getNewsSong();
  Future<List<SongEntity>> getPlayList();
  Future<bool> addOrRemoveFavoriteSong(String songId);
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

  @override
  Future<bool> addOrRemoveFavoriteSong(String songId) async {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    bool isFavorite = false;
    var user = firebaseAuth.currentUser;
    String userId = user!.uid;
    var data = await firebaseFirestore
        .collection('Users')
        .doc(userId)
        .collection('Favorites')
        .where(
          'songId',
          isEqualTo: songId,
        )
        .get();
    if (data.docs.isEmpty) {
      await firebaseFirestore
          .collection('Users')
          .doc(userId)
          .collection('Favorites')
          .add({
            'songId': songId,
            'addDate': Timestamp.now(),
          });
      isFavorite = true;
    } else {
      await data.docs.first.reference.delete();
      isFavorite = false;
    }
    return isFavorite;
  }
}
