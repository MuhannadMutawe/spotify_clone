import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/presentation/home/manger/get_news_songs/get_news_songs_cubit.dart';
import 'package:spotify_app/presentation/home/manger/get_news_songs/get_news_songs_state.dart';
import 'package:spotify_app/presentation/home/views/widget/news_songs_list_view.dart';

class GetNewsSongsBlocBuilder extends StatelessWidget {
  const GetNewsSongsBlocBuilder({super.key});

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
              child: NewsSongsListView(
                songs: songs,
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
    );
  }
}
