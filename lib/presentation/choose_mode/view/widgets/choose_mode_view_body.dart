import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/presentation/choose_mode/view/widgets/mode_buttons_and_continue.dart';

import '../../../../core/config/assets/app_images.dart';
import '../../../../core/config/assets/app_vectors.dart';

class ChooseModeViewBody extends StatelessWidget {
  const ChooseModeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 45.h, horizontal: 30.w),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AppImages.chooseModeBG),
        ),
        color: Colors.black.withOpacity(0.15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(AppVectors.logo),
          const Spacer(),
          ModeButtonsAndContinue()
        ],
      ),
    );
  }
}
