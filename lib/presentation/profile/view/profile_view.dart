import 'package:flutter/material.dart';
import 'package:spotify_app/common/helper/is_dark_mode.dart';
import 'package:spotify_app/common/widgets/app_bar.dart';
import 'package:spotify_app/presentation/profile/view/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: Text(
          'Porfile',
        ),
        backgroundColor: context.isDarkMode ? Color(0xFF2C2B2B) : Colors.white,
      ),
      body: PorfileViewBody(),
    );
  }
}
