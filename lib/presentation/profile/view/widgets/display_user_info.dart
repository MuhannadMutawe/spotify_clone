import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/common/helper/is_dark_mode.dart';
import 'package:spotify_app/presentation/profile/manger/get_user_cubit/get_user_cubit.dart';
import 'package:spotify_app/presentation/profile/manger/get_user_cubit/get_user_state.dart';
import 'package:spotify_app/presentation/profile/view/widgets/user_info.dart';

class DisplayUserInfo extends StatelessWidget {
  const DisplayUserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.3.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.isDarkMode ? Color(0xFF2C2B2B) : Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(45.r),
          bottomRight: Radius.circular(45.r),
        ),
      ),
      child: BlocBuilder<GetUserCubit, GetUserState>(
        builder: (context, state) {
          return state.when(
            initial: () => SizedBox.shrink(),
            loading: () => Center(
              child: CircularProgressIndicator(),
            ),
            success: (user) {
              return UserInfo(user: user);
            },
            failure: (errorMessage) => Center(
              child: Text(errorMessage),
            ),
          );
        },
      ),
    );
  }
}
