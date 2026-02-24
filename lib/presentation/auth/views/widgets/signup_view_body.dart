import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/common/widgets/app_elevated_button.dart';
import 'package:spotify_app/presentation/auth/views/widgets/custom_page_title.dart';
import 'package:spotify_app/presentation/auth/views/widgets/custom_text_form_field.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomPageTitle(
            title: 'Register',
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomTextFormField(
            hintText: 'Full Name',
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextFormField(
            hintText: 'Enter Email',
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextFormField(
            hintText: 'Password',
          ),
          SizedBox(
            height: 20.h,
          ),
          AppElevatedButton(
            label: 'Create Account',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
