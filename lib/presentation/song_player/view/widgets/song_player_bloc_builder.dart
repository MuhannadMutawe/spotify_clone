import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/core/config/themes/app_colors.dart';
import 'package:spotify_app/presentation/song_player/manger/song_player/song_player_cubit.dart';
import 'package:spotify_app/presentation/song_player/manger/song_player/song_player_state.dart';

class SongPlayerblocBuilder extends StatelessWidget {
  const SongPlayerblocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SongPlayerCubit, SongPlayerState>(
      builder: (context, state) {
        return state.when(
          initial: () => SizedBox.shrink(),
          loading: () => Center(
            child: CircularProgressIndicator(
              color: AppColors.primary,
            ),
          ),
          success: (position, duration, isPlaying) {
            return Column(
              children: [
                Slider(
                  value: position.clamp(0, duration),
                  min: 0.0,
                  max: duration,
                  activeColor: AppColors.primary,
                  onChanged: (value) {
                    HapticFeedback.selectionClick();
                    context.read<SongPlayerCubit>().audioPlayer.seek(
                      Duration(seconds: value.toInt()),
                    );
                  },
                ),

                SizedBox(height: 20.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(formatDuration(Duration(seconds: position.toInt()))),
                    Text(formatDuration(Duration(seconds: duration.toInt()))),
                  ],
                ),

                SizedBox(height: 20.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Icons.replay_10, size: 35.sp),
                      onPressed: () {
                        HapticFeedback.lightImpact();
                        context.read<SongPlayerCubit>().skipBackward();
                      },
                    ),
                    SizedBox(width: 20.w),
                    GestureDetector(
                      onTap: () {
                        HapticFeedback.mediumImpact();
                        context.read<SongPlayerCubit>().playOrPauseSong();
                      },
                      child: Container(
                        height: 60.h,
                        width: 60.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primary,
                        ),
                        child: Icon(
                          size: 35.sp,
                          isPlaying ? Icons.pause : Icons.play_arrow,
                        ),
                      ),
                    ),

                    SizedBox(width: 20.w),
                    IconButton(
                      icon: Icon(Icons.forward_10, size: 35.sp),
                      onPressed: () {
                        HapticFeedback.lightImpact();
                        context.read<SongPlayerCubit>().skipForward();
                      },
                    ),
                  ],
                ),
              ],
            );
          },
          failure: () => Center(
            child: Text('Failed to load song'),
          ),
        );
      },
    );
  }

  String formatDuration(Duration duration) {
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}
