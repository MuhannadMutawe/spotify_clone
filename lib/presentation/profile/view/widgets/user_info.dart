import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/domain/entities/auth/user.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.user,
  });

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 90.h,
          width: 90.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(user.imageURL!),
            ),
          ),
        ),
        Text(
          user.fullName!,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          user.email!,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
