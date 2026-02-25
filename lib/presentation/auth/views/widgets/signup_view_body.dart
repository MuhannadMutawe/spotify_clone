import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/presentation/auth/views/widgets/custom_page_title.dart';
import 'package:spotify_app/presentation/auth/views/widgets/signup_text_form_fields_and_register_button.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomPageTitle(
            title: 'Register',
          ),
          SizedBox(
            height: 50.h,
          ),
          SignupTextFormFieldsAndRegisterButton(),
        ],
      ),
    );
  }
}
