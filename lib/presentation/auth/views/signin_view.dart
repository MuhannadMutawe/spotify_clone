import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_app/common/helper/is_dark_mode.dart';
import 'package:spotify_app/common/widgets/app_bar.dart';
import 'package:spotify_app/presentation/auth/views/widgets/do_not_have_account_text.dart';
import 'package:spotify_app/presentation/auth/views/widgets/signin_view_body.dart';

import '../../../core/config/assets/app_vectors.dart';
import '../../../core/utils/app_router.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 40.h,
          width: 40.w,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: context.isDarkMode
                  // ignore: deprecated_member_use
                  ? Colors.white.withOpacity(0.03)
                  // ignore: deprecated_member_use
                  : Colors.black.withOpacity(0.04),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: context.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
      body: SigninViewBody(),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(bottom: 30.h),
          child: DoNotHaveAccountText(
            askTitle: 'Not a Member?  ',
            buttonTitle: 'Register now',
            onTap: () => context.pushReplacement(AppRouter.kSignUpView),
          ),
        ),
      ),
    );
  }
}
