import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/common/helper/is_dark_mode.dart';
import 'package:spotify_app/core/config/themes/app_colors.dart';

class DoNotHaveAccountText extends StatelessWidget {
  const DoNotHaveAccountText({
    super.key,
    required this.askTitle,
    required this.buttonTitle,
    this.onTap,
  });

  final String askTitle;
  final String buttonTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: askTitle,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: context.isDarkMode? AppColors.grey : Colors.black54
            ),
          ),
          TextSpan(
            text: buttonTitle,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: AppColors.primary
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
