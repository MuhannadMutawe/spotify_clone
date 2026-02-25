import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/presentation/auth/views/widgets/custom_text_form_field.dart';

import '../../../../common/widgets/app_elevated_button.dart';

class SignupTextFormFieldsAndRegisterButton extends StatefulWidget {
  const SignupTextFormFieldsAndRegisterButton({
    super.key,
  });

  @override
  State<SignupTextFormFieldsAndRegisterButton> createState() =>
      _SignupTextFormFieldsAndRegisterButtonState();
}

class _SignupTextFormFieldsAndRegisterButtonState
    extends State<SignupTextFormFieldsAndRegisterButton> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
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
            hintText: 'Full Name',
            controller: _nameController,
            validator: (value) {
              if (value != null && value.isEmpty) {
                return 'Please the Name field is required';
              }

              return 'Something wrong !!';
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextFormField(
            hintText: 'Enter Email',
            controller: _emailController,
            validator: (value) {
              if (value != null && value.isEmpty) {
                return 'Please the Email is required';
              }

              return 'Something wrong !!';
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextFormField(
            hintText: 'Password',
            controller: _passwordController,
            validator: (value) {
              if (value != null && value.isEmpty) {
                return 'Please the Password is required';
              }

              return 'Something wrong !!';
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          AppElevatedButton(
            label: 'Create Account',
            onPressed: () {
              if(_formKey.currentState!.validate()){

              }
            },
          ),
        ],
      ),
    );
  }
}
