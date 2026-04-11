import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/common/bloc/favorite_button/favorite_button_cubit.dart';
import 'package:spotify_app/common/bloc/favorite_button/favorite_button_state.dart';
import 'package:spotify_app/core/config/themes/app_colors.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';
import 'package:spotify_app/domain/usecases/song/add_or_remove_favorite_song_use_case.dart';
import 'package:spotify_app/domain/usecases/song/is_favorite_song_use_case.dart';
import 'package:spotify_app/setup_service_locator.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    super.key,
    required this.songEntity,
    this.iconSize,
    this.function,
  });

  final SongEntity songEntity;
  final double? iconSize;
  final Function? function;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteButtonCubit(
        getIt<AddOrRemoveFavoriteSongUseCase>(),
        getIt<IsFavoriteSongUseCase>(),
      ),
      child: BlocBuilder<FavoriteButtonCubit, FavoriteButtonState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              return IconButton(
                onPressed: () {
                  context.read<FavoriteButtonCubit>().favoriteButtonUpdate(
                    songEntity.songId,
                  );
                  if (function != null) {
                    function!();
                  }
                },
                icon: Icon(
                  songEntity.isFavorite
                      ? Icons.favorite
                      : Icons.favorite_outline_outlined,
                  size: iconSize ?? 25.sp,
                  color: AppColors.darkGrey,
                ),
              );
            },
            updated: (isFavorite) {
              return IconButton(
                onPressed: () {
                  context.read<FavoriteButtonCubit>().favoriteButtonUpdate(
                    songEntity.songId,
                  );
                },
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_outline_outlined,
                  size: iconSize ?? 25.sp,
                  color: AppColors.darkGrey,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
