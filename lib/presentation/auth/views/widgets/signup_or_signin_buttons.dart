import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_app/common/helper/is_dark_mode.dart';
import 'package:spotify_app/core/utils/app_router.dart';

import '../../../../common/widgets/app_elevated_button.dart';

class SignupOrSigninButtons extends StatelessWidget {
  const SignupOrSigninButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppElevatedButton(
            label: 'Register',
            onPressed: () => context.push(AppRouter.kSignUpView),
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              minimumSize: Size.fromHeight(70.h),
            ),
            onPressed: () => context.push(AppRouter.kSignInView),
            child: Text(
              'Sign In',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
                color: context.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
