import 'package:flutter/material.dart';
import 'package:spotify_app/presentation/choose_mode/view/widgets/choose_mode_view_body.dart';

class ChooseModeView extends StatelessWidget {
  const ChooseModeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChooseModeViewBody(),
    );
  }
}
