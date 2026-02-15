import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_app/core/utils/app_router.dart';

import '../../../../common/widgets/app_elevated_button.dart';
import '../../../../core/config/themes/app_colors.dart';

class TitleAndGetStarted extends StatelessWidget {
  const TitleAndGetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Enjoy Listening To Music',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20.sp,
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: AppColors.grey,
            fontSize: 16.sp,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 50.h,
        ),
        AppElevatedButton(
          label: 'Get Started',
          onPressed: () => context.pushReplacement(AppRouter.kChooseModeView),
        ),
      ],
    );
  }
}
