import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_app/common/bloc/favorite_button/favorite_button_cubit.dart';
import 'package:spotify_app/common/helper/is_dark_mode.dart';
import 'package:spotify_app/common/widgets/favorite_button.dart';
import 'package:spotify_app/core/config/themes/app_colors.dart';
import 'package:spotify_app/core/utils/app_router.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';

class PlaySongsListView extends StatefulWidget {
  const PlaySongsListView({
    super.key,
    required this.songs,
  });

  final List<SongEntity> songs;

  @override
  State<PlaySongsListView> createState() => _PlaySongsListViewState();
}

class _PlaySongsListViewState extends State<PlaySongsListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: widget.songs.length,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return SongDetails(
          song: widget.songs[index],
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        height: 20.h,
      ),
    );
  }
}

class SongDetails extends StatelessWidget {
  const SongDetails({
    super.key,
    required this.song,
  });

  final SongEntity song;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await context.push(
          AppRouter.kSongPlayerView,
          extra: song,
        );

        await context.read<FavoriteButtonCubit>().loadInitialState(
          song.songId,
        );
      },
      child: Row(
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
                    song.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    song.artist,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text(
                song.duration.toString().replaceAll('.', ':'),
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              FavoriteButton(
                songEntity: song,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
