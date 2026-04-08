import 'package:flutter/material.dart';
import 'package:spotify_app/presentation/profile/view/widgets/display_user_info.dart';

class PorfileViewBody extends StatelessWidget {
  const PorfileViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DisplayUserInfo(),
      ],
    );
  }
}
