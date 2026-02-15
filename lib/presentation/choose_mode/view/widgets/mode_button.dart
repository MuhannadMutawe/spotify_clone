import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ModeButton extends StatelessWidget {
  const ModeButton({
    super.key,
    required this.label,
    required this.iconLink,
    this.onTap
  });

  final String label;
  final String iconLink;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ClipOval(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                height: 80.h,
                width: 80.w,
                decoration: BoxDecoration(
                  color: Color(0xff30393C).withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  iconLink,
                  fit: BoxFit.none,
                ),
              ),
            ),
          ), // Clip oval
          SizedBox(
            height: 20.h,
          ),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
