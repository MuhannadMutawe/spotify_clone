import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/common/bloc/favorite_button/favorite_button_cubit.dart';
import 'package:spotify_app/common/bloc/favorite_button/favorite_button_state.dart';
import 'package:spotify_app/core/config/themes/app_colors.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key, required this.songEntity, this.iconSize});

  final SongEntity songEntity;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteButtonCubit, FavoriteButtonState>(
      builder: (context, state) {
        return state.when(
          initial: () => IconButton(
            onPressed: () {
              context.read<FavoriteButtonCubit>().favoriteButtonUpdate(
                songEntity.songId,
              );
            },
            icon: Icon(
              size: iconSize ?? 25.sp,
              color: songEntity.isFavorite ? Colors.red : AppColors.darkGrey,
              songEntity.isFavorite
                  ? Icons.favorite_rounded
                  : Icons.favorite_border_rounded,
            ),
          ),
          updated: (isFavorite) => IconButton(
            onPressed: () {
              context.read<FavoriteButtonCubit>().favoriteButtonUpdate(
                songEntity.songId,
              );
            },
            icon: Icon(
              size: iconSize ?? 25.sp,
              color: isFavorite ? Colors.red : AppColors.darkGrey,
              isFavorite
                  ? Icons.favorite_rounded
                  : Icons.favorite_border_rounded,
            ),
          ),
        );
      },
    );
  }
}
