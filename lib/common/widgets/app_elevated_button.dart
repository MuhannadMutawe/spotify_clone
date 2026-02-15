import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.label,
    this.onPressed,
    this.height,
  });

  final String label;
  final void Function()? onPressed;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 75.h),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.r)),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 25.sp,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      ),
    );
  }
}
