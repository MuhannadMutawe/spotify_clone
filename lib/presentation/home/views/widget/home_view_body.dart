import 'package:flutter/material.dart';
import 'package:spotify_app/presentation/home/views/widget/get_news_songs_bloc_builder.dart';
import 'package:spotify_app/presentation/home/views/widget/get_play_list_bloc_builder.dart';
import 'package:spotify_app/presentation/home/views/widget/home_tabs.dart';
import 'package:spotify_app/presentation/home/views/widget/home_top_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeTopCard(),
          HomeTabs(),
          GetNewsSongsBlocBuilder(),
          GetPlayListBlocBuilder(),
        ],
      ),
    );
  }
}
