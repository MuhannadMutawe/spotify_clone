import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_app/data/models/song/song_model.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';

abstract class SongFirebaseSource {
  Future<List<SongEntity>> getNewsSong();
  Future<List<SongEntity>> getPlayList();
  Future<bool> addOrRemoveFavoriteSong(String songId);
  Future<bool> isFavoriteSong(String songId);
  Future<List<SongEntity>> getUserFavoriteSongs();
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
      bool isFavorite = await isFavoriteSong(element.reference.id);
      songModel.isFavorite = isFavorite;
      songModel.songId = element.reference.id;
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
      bool isFavorite = await isFavoriteSong(element.reference.id);
      songModel.isFavorite = isFavorite;
      songModel.songId = element.reference.id;
      songs.add(songModel.toEntity());
    }
    return songs;
  }

  @override
  Future<bool> addOrRemoveFavoriteSong(String songId) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return false;

    final docRef = FirebaseFirestore.instance
        .collection('Users')
        .doc(user.uid)
        .collection('Favorites')
        .doc(songId);

    final doc = await docRef.get();

    if (doc.exists) {
      await docRef.delete();
      return false;
    } else {
      await docRef.set({
        'addedDate': Timestamp.now(),
      });
      return true;
    }
  }

  @override
  Future<bool> isFavoriteSong(String songId) async {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    var user = firebaseAuth.currentUser;

    if (user == null) return false;

    final doc = await FirebaseFirestore.instance
        .collection('Users')
        .doc(user.uid)
        .collection('Favorites')
        .doc(songId)
        .get();

    return doc.exists;
  }

  @override
  Future<List<SongEntity>> getUserFavoriteSongs() async {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    var user = firebaseAuth.currentUser;

    List<SongEntity> favoriteSongs = [];

    if (user != null) {
      final data = await FirebaseFirestore.instance
          .collection('Users')
          .doc(user.uid)
          .collection('Favorites')
          .get();
      for (var element in data.docs) {
        String songId = element.reference.id;
        var song = await FirebaseFirestore.instance
            .collection('Songs')
            .doc(songId)
            .get();
        SongModel songModel = SongModel.fromJsom(song.data()!);
        songModel.songId = songId;
        songModel.isFavorite = true;
        favoriteSongs.add(songModel.toEntity());
      }
    }

    return favoriteSongs;
  }
}
