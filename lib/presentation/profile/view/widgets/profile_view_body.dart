import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/common/helper/is_dark_mode.dart';

class PorfileViewBody extends StatelessWidget {
  const PorfileViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2.3,
          decoration: BoxDecoration(
            color: context.isDarkMode ? Color(0xFF2C2B2B) : Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.r),
              bottomRight: Radius.circular(30.r),
            ),
          ),
        ),
      ],
    );
  }
}
