import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayListHeader extends StatelessWidget {
  const PlayListHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Playlist',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
        ),
        Text(
          'See More',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13.sp,
          ),
        ),
      ],
    );
  }
}
