import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/presentation/auth/views/widgets/custom_page_title.dart';
import 'package:spotify_app/presentation/auth/views/widgets/custom_text_form_field.dart';

import '../../../../common/widgets/app_elevated_button.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomPageTitle(
            title: 'Sign In',
          ),
          SizedBox(
            height: 60.h,
          ),
          Column(
            children: [
              CustomTextFormField(
                hintText: 'Enter Email',
                // controller: _emailController,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Please the Email is required';
                  }

                  return 'Something wrong !!';
                },
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextFormField(
                hintText: 'Password',
                // controller: _passwordController,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Please the Password is required';
                  }

                  return 'Something wrong !!';
                },
              ),
              SizedBox(
                height: 45.h,
              ),
              AppElevatedButton(
                label: 'Sign In',
                onPressed: () {
                  // if(_formKey.currentState!.validate()){
                  //
                  // }
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
