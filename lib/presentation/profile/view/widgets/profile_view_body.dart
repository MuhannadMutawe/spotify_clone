import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_app/common/bloc/favorite_button/favorite_button_cubit.dart';
import 'package:spotify_app/common/widgets/favorite_button.dart';
import 'package:spotify_app/core/utils/app_router.dart';
import 'package:spotify_app/domain/usecases/song/add_or_remove_favorite_song_use_case.dart';
import 'package:spotify_app/domain/usecases/song/is_favorite_song_use_case.dart';
import 'package:spotify_app/presentation/profile/manger/get_user_favorite_songs/get_user_favorite_songs_cubit.dart';
import 'package:spotify_app/presentation/profile/manger/get_user_favorite_songs/get_user_favorite_songs_state.dart';
import 'package:spotify_app/presentation/profile/view/widgets/display_user_info.dart';
import 'package:spotify_app/setup_service_locator.dart';

class PorfileViewBody extends StatelessWidget {
  const PorfileViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DisplayUserInfo(),
        Expanded(
          child:
              BlocBuilder<GetUserFavoriteSongsCubit, GetUserFavoriteSongsState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => SizedBox.shrink(),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    success: (songs) {
                      return ListView.separated(
                        itemCount: songs.length,
                        padding: EdgeInsets.all(18.w),

                        separatorBuilder: (context, index) => SizedBox(
                          height: 20.h,
                        ),
                        itemBuilder: (context, index) {
                          final song = songs[index];
                          return GestureDetector(
                            onTap: () {
                              context.push(
                                AppRouter.kSongPlayerView,
                                extra: song,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          20,
                                        ),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            song.imageCover,
                                          ),
                                        ),
                                      ),
                                    ),

                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          song.title,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          song.artist,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 11,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      song.duration.toString().replaceAll(
                                        '.',
                                        ' : ',
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    BlocProvider(
                                      create: (context) => FavoriteButtonCubit(
                                        getIt<AddOrRemoveFavoriteSongUseCase>(),
                                        getIt<IsFavoriteSongUseCase>(),
                                      )..loadInitialState(song.songId),
                                      child: FavoriteButton(
                                        songEntity: song,
                                        // key: UniqueKey(),
                                        function: () {
                                          context
                                              .read<GetUserFavoriteSongsCubit>()
                                              .removeSong(index);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    failure: (messageError) => Center(
                      child: Text(messageError),
                    ),
                  );
                },
              ),
        ),
      ],
    );
  }
}
