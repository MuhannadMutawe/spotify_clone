import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/presentation/intro/views/widgets/title_and_get_started.dart';

import '../../../../core/config/assets/app_images.dart';
import '../../../../core/config/assets/app_vectors.dart';

class GetStartedViewBody extends StatelessWidget {
  const GetStartedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 30.w),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AppImages.introBG),
        ),
        color: Colors.black.withOpacity(0.15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(AppVectors.logo),
          const Spacer(),
          TitleAndGetStarted()
        ],
      ),
    );
  }
}
