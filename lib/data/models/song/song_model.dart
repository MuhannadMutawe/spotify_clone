import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';

class SongModel {
  String? title;
  String? artist;
  String? imageCover;
  String? audioUrl;
  double? duration;
  Timestamp? releaseDate;
  bool? isFavorite;
  String? songId;

  SongModel({
    required this.title,
    required this.artist,
    required this.duration,
    required this.releaseDate,
    required this.imageCover,
    required this.audioUrl,
    required this.isFavorite,
    required this.songId,
  });

  SongModel.fromJsom(Map<String, dynamic> data) {
    title = data['title'];
    artist = data['artist'];
    imageCover = data['imageCover'];
    duration = data['duration'];
    releaseDate = data['releaseDate'];
    audioUrl = data['audioUrl'];
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
      audioUrl: audioUrl!,
      isFavorite: isFavorite!,
      songId: songId!,
    );
  }
}
