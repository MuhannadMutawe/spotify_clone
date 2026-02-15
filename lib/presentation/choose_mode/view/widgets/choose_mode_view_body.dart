import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_app/presentation/choose_mode/view/widgets/mode_button.dart';

import '../../../../common/widgets/app_elevated_button.dart';
import '../../../../core/config/assets/app_images.dart';
import '../../../../core/config/assets/app_vectors.dart';
import '../../../../core/utils/app_router.dart';

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
          Row(
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
          ),
          SizedBox(
            height: 80.h,
          ),
          AppElevatedButton(
            label: 'Continue',
            onPressed: () => context.pushReplacement(AppRouter.kChooseModeView),
          ),
        ],
      ),
    );
  }
}
