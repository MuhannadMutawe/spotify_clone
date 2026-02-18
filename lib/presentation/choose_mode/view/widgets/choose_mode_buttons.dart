import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/presentation/choose_mode/manger/theme_cubit.dart';
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
          onTap: () => context.read<ThemeCubit>().changeMode(ThemeMode.dark),
        ),
        ModeButton(
          label: 'Light Mode',
          iconLink: AppVectors.sun,
          onTap: () => context.read<ThemeCubit>().changeMode(ThemeMode.light),
        )
      ],
    );
  }
}