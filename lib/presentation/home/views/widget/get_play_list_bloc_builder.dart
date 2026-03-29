import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/common/helper/is_dark_mode.dart';
import 'package:spotify_app/core/config/themes/app_colors.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';
import 'package:spotify_app/presentation/home/manger/cubit/get_play_list_cubit.dart';
import 'package:spotify_app/presentation/home/manger/cubit/get_play_list_state.dart';

class GetPlayListBlocBuilder extends StatelessWidget {
  const GetPlayListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<GetPlayListCubit, GetPlayListState>(
          builder: (context, state) => state.when(
            initial: () => SizedBox.shrink(),
            loading: () => Center(
              child: CircularProgressIndicator(),
            ),
            success: (songs) {
              return Padding(
                padding: EdgeInsets.only(
                  top: 40.h,
                  left: 16.w,
                  right: 16.w,
                  bottom: 16.h,
                ),
                child: Column(
                  children: [
                    PlayListHeader(),
                    SizedBox(
                      height: 20.h,
                    ),
                    PlaySongsListView(
                      songs: songs,
                    ),
                  ],
                ),
              );
            },
            failure: (error) {
              return Center(
                child: Text('Failed to load songs: $error'),
              );
            },
          ),
        ),
      ],
    );
  }
}

class PlayListHeader extends StatelessWidget {
  const PlayListHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Playlist',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
        ),
        Text(
          'See More',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13.sp,
          ),
        ),
      ],
    );
  }
}

class PlaySongsListView extends StatelessWidget {
  const PlaySongsListView({
    super.key,
    required this.songs,
  });

  final List<SongEntity> songs;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: songs.length,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 45.h,
                  width: 45.w,
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
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      songs[index].title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
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
                        fontSize: 11.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(songs[index].duration.toString().replaceAll('.', ':')),
                SizedBox(
                  width: 20.w,
                ),
                Icon(
                  Icons.favorite,
                  color: context.isDarkMode
                      ? const Color(0xff959595)
                      : const Color(0xff555555),
                ),
              ],
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        height: 20.h,
      ),
    );
  }
}
