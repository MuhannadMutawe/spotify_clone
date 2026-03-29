import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/core/config/themes/app_colors.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';

class SongDetail extends StatelessWidget {
  const SongDetail({
    super.key,
    required this.songEntity,
  });

  final SongEntity songEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              songEntity.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              songEntity.artist,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite_border_rounded,
            size: 35.sp,
            color: AppColors.darkGrey,
          ),
        ),
      ],
    );
  }
}
