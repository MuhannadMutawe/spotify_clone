import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/presentation/auth/views/signup_or_signin_widget/signup_or_signin_body_title_and_buttons.dart';

import '../../../../core/config/assets/app_images.dart';
import '../../../../core/config/assets/app_vectors.dart';

class SignupOrSigninViewBody extends StatelessWidget {
  const SignupOrSigninViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(AppVectors.topPattern),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SvgPicture.asset(AppVectors.bottomPattern),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(AppImages.authBG),
        ),
        SignupOrSigninBodyTitleAndButtons(),
      ],
    );
  }
}