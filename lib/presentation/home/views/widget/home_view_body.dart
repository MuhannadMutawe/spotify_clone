import 'package:flutter/material.dart';
import 'package:spotify_app/presentation/home/views/widget/home_tabs.dart';
import 'package:spotify_app/presentation/home/views/widget/home_top_card.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTopCard(),
        HomeTabs(),
      ],
    );
  }
}
