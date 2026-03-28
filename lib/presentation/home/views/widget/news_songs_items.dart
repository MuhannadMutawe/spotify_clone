import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/common/helper/is_dark_mode.dart';
import 'package:spotify_app/core/config/themes/app_colors.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';

class NewsSongsItems extends StatelessWidget {
  const NewsSongsItems({
    super.key,
    required this.songEntity,
  });

  final SongEntity songEntity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    songEntity.imageCover,
                  ),
                ),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  transform: Matrix4.translationValues(3.w, 7.h, 0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: context.isDarkMode
                        ? AppColors.darkGrey
                        : const Color(0xffE6E6E6),
                  ),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: context.isDarkMode
                        ? const Color(0xff959595)
                        : const Color(0xff555555),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            songEntity.title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            songEntity.artist,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
