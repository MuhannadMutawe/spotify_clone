import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/common/widgets/app_bar.dart';
import 'package:spotify_app/presentation/auth/views/widgets/signin_view_body.dart';

import '../../../core/config/assets/app_vectors.dart';

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
      ),
      body: SigninViewBody(),
    );
  }
}
