import 'package:flutter/material.dart';
import 'package:spotify_app/presentation/choose_mode/view/widgets/mode_button.dart';

import '../../../../core/config/assets/app_vectors.dart';

class ChooseModeButtons extends StatelessWidget {
  const ChooseModeButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ModeButton(
          label: 'Dark Mode',
          iconLink: AppVectors.moon,
        ),
        ModeButton(
          label: 'Light Mode',
          iconLink: AppVectors.sun,
        )
      ],
    );
  }
}