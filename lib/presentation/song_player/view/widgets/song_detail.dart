import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/common/bloc/favorite_button/favorite_button_cubit.dart';
import 'package:spotify_app/common/widgets/favorite_button.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';
import 'package:spotify_app/domain/usecases/song/add_or_remove_favorite_song_use_case.dart';
import 'package:spotify_app/domain/usecases/song/is_favorite_song_use_case.dart';
import 'package:spotify_app/setup_service_locator.dart';

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
        BlocProvider(
          create: (context) => FavoriteButtonCubit(
            getIt<AddOrRemoveFavoriteSongUseCase>(),
            getIt<IsFavoriteSongUseCase>(),
          )..loadInitialState(songEntity.songId),
          child: FavoriteButton(
            songEntity: songEntity,
            iconSize: 30.sp,
          ),
        ),
      ],
    );
  }
}
