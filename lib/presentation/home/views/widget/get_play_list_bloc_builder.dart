import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/presentation/home/manger/get_play_list/get_play_list_cubit.dart';
import 'package:spotify_app/presentation/home/manger/get_play_list/get_play_list_state.dart';
import 'package:spotify_app/presentation/home/views/widget/play_lsit_header.dart';
import 'package:spotify_app/presentation/home/views/widget/play_songs_list_view.dart';

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
