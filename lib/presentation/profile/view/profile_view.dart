import 'package:flutter/material.dart';
import 'package:spotify_app/common/widgets/app_bar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(),
    );
  }
}
