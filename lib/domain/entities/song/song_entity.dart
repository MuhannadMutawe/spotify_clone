import 'package:cloud_firestore/cloud_firestore.dart';

class SongEntity {
  final String title;
  final String artist;
  final double duration;
  final Timestamp releaseDate;
  final String imageCover;
  final String audioUrl;

  SongEntity({
    required this.title,
    required this.artist,
    required this.duration,
    required this.releaseDate,
    required this.imageCover,
    required this.audioUrl,
  });
}
