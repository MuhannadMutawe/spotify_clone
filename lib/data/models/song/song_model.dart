import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';

class SongModel {
  String? title;
  String? artist;
  String? imageCover;
  double? duration;
  Timestamp? releaseDate;

  SongModel({
    required this.title,
    required this.artist,
    required this.duration,
    required this.releaseDate,
    required this.imageCover,
  });

  SongModel.fromJsom(Map<String, dynamic> data) {
    title = data['title'];
    artist = data['artist'];
    imageCover = data['imageCover'];
    duration = data['duration'];
    releaseDate = data['releaseDate'];
  }
}

extension SongModelX on SongModel {
  SongEntity toEntity() {
    return SongEntity(
      title: title!,
      artist: artist!,
      duration: duration!,
      releaseDate: releaseDate!,
      imageCover: imageCover!,
    );
  }
}
