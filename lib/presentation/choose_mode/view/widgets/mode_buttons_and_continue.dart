import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_app/common/widgets/app_elevated_button.dart';
import 'package:spotify_app/presentation/choose_mode/view/widgets/choose_mode_buttons.dart';

import '../../../../core/utils/app_router.dart';

class ModeButtonsAndContinue extends StatelessWidget {
  const ModeButtonsAndContinue({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Choose Mode',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20.sp,
          ),
        ),
        SizedBox(
          height: 40.h,
        ), // Container
        // BackdropFilter
        ChooseModeButtons(),
        SizedBox(
          height: 80.h,
        ),
        AppElevatedButton(
          label: 'Continue',
          onPressed: () => context.pushReplacement(AppRouter.kChooseModeView),
        ),
      ],
    );
  }
}
