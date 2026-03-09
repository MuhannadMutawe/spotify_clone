import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/data/models/auth/signin_user_req.dart';
import 'package:spotify_app/presentation/auth/manger/Sign_in/sign_in_cubit.dart';
import 'package:spotify_app/presentation/auth/views/widgets/custom_text_form_field.dart';

import '../../../../common/widgets/app_elevated_button.dart';

class SigninTextFormFieldsAndSigninButton extends StatefulWidget {
  const SigninTextFormFieldsAndSigninButton({
    super.key,
  });

  @override
  State<SigninTextFormFieldsAndSigninButton> createState() =>
      _SigninTextFormFieldsAndSigninButtonState();
}

class _SigninTextFormFieldsAndSigninButtonState
    extends State<SigninTextFormFieldsAndSigninButton> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Enter Email',
            // controller: _emailController,
            validator: (value) {
              if (value != null && value.isEmpty) {
                return 'Please the Email is required';
              }
              return null;
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

              return null;
            },
          ),
          SizedBox(
            height: 45.h,
          ),
          AppElevatedButton(
            label: 'Sign In',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                BlocProvider.of<SignInCubit>(context).signInCubit(
                  userInfo: SignInUserReq(
                    email: _emailController.text,
                    password: _passwordController.text,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
