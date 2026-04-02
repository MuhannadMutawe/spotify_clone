import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/common/bloc/favorite_button/favorite_button_cubit.dart';
import 'package:spotify_app/common/bloc/favorite_button/favorite_button_state.dart';
import 'package:spotify_app/core/config/themes/app_colors.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key, required this.songEntity, this.iconSize});

  final SongEntity songEntity;
  final double? iconSize;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<FavoriteButtonCubit, FavoriteButtonState>(
      listener: (context, state) {
        state.when(
          initial: () {
            isFavorite = widget.songEntity.isFavorite;
            setState(() {});
          },
          updated: (value) {
            isFavorite = value;
            setState(() {});
          },
        );
      },

      child: IconButton(
        onPressed: () async {
          await context.read<FavoriteButtonCubit>().favoriteButtonUpdate(
            widget.songEntity.songId,
          );
        },
        icon: Icon(
          size: widget.iconSize ?? 25.sp,
          color: isFavorite ? Colors.red : AppColors.darkGrey,
          isFavorite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
        ),
      ),
    );
  }
}
