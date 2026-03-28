import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/common/helper/is_dark_mode.dart';
import 'package:spotify_app/core/config/themes/app_colors.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';
import 'package:spotify_app/presentation/home/manger/get_news_songs/get_news_songs_cubit.dart';
import 'package:spotify_app/presentation/home/manger/get_news_songs/get_news_songs_state.dart';

class GetSongsBlocBuilder extends StatelessWidget {
  const GetSongsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: BlocBuilder<GetNewsSongsCubit, GetNewsSongsState>(
        builder: (context, state) => state.when(
          initial: () => SizedBox.shrink(),
          loading: () => Center(
            child: CircularProgressIndicator(),
          ),
          success: (songs) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: _songs(songs),
            );
          },
          failure: (error) {
            return Center(
              child: Text('Failed to load songs: $error'),
            );
          },
        ),
      ),
    );
  }
}

Widget _songs(List<SongEntity> songs) {
  return ListView.separated(
    scrollDirection: Axis.horizontal,
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return GestureDetector(
        child: SizedBox(
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
                        songs[index].imageCover,
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
                songs[index].title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                songs[index].artist,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        ),
      );
    },
    separatorBuilder: (context, index) => SizedBox(
      width: 12.w,
    ),
    itemCount: songs.length,
  );
}
