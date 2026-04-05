import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_app/common/widgets/app_bar.dart';
import 'package:spotify_app/core/config/assets/app_vectors.dart';
import 'package:spotify_app/core/utils/app_router.dart';
import 'package:spotify_app/presentation/home/manger/get_news_songs/get_news_songs_cubit.dart';
import 'package:spotify_app/presentation/home/manger/get_play_list/get_play_list_cubit.dart';
import 'package:spotify_app/presentation/home/views/widget/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetNewsSongsCubit>(context).getNewsSongs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 40.h,
          width: 40.w,
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await context.push(AppRouter.kProfileView);
              await context.read<GetPlayListCubit>().getPlayList();
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: HomeViewBody(),
    );
  }
}
