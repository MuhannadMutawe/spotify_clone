import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/presentation/auth/views/signup_or_signin_widget/signup_or_signin_buttons.dart';

import '../../../../core/config/assets/app_vectors.dart';
import '../../../../core/config/themes/app_colors.dart';

class SignupOrSigninBodyTitleAndButtons extends StatelessWidget {
  const SignupOrSigninBodyTitleAndButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(right: 30.w,left: 30.w,bottom: 30.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppVectors.logo),
            SizedBox(height: 55.h),
            Text(
              'Enjoy Listening To Music',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.sp,
              ), // TextStyle
            ),
            SizedBox(height: 25.h),
            Text(
              'Spotify is a proprietary Swedish audio streaming and media services provider ',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.grey,
                fontSize: 16.sp,
              ), // T
              textAlign: TextAlign.center, // extStyle
            ), // Text
            SizedBox(
              height: 30.h,
            ),
            SignupOrSigninButtons(),
          ],
        ),
      ),
    );
  }
}