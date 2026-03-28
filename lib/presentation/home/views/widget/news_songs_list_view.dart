import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';
import 'package:spotify_app/presentation/home/views/widget/news_songs_items.dart';

class NewsSongsListView extends StatelessWidget {
  const NewsSongsListView({
    super.key,
    required this.songs,
  });

  final List<SongEntity> songs;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return NewsSongsItems(
          songEntity: songs[index],
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        width: 12.w,
      ),
      itemCount: songs.length,
    );
  }
}
