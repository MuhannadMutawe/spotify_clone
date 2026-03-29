import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';
import 'package:spotify_app/presentation/song_player/view/widgets/song_detail.dart';
import 'package:spotify_app/presentation/song_player/view/widgets/song_image_cover.dart';

class SongPlayerViewBody extends StatelessWidget {
  const SongPlayerViewBody({
    super.key,
    required this.songEntity,
  });

  final SongEntity songEntity;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 18.w),
      child: Column(
        children: [
          SongImageCover(
            imageUrl: songEntity.imageCover,
          ),
          SizedBox(
            height: 20.h,
          ),
          SongDetail(
            songEntity: songEntity,
          ),
        ],
      ),
    );
  }
}
