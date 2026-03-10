import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_app/common/helper/is_dark_mode.dart';
import 'package:spotify_app/core/config/themes/app_colors.dart';
import 'package:spotify_app/core/utils/app_router.dart';
import 'package:spotify_app/presentation/auth/manger/sign_up/sign_up_cubit.dart';
import 'package:spotify_app/presentation/auth/manger/sign_up/sign_up_state.dart';
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
          SignupBlocListener(),
        ],
      ),
    );
  }
}

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
          current is SignUpLoading ||
          current is SignUpSuccess ||
          current is SignUpFailure,
      listener: (context, state) => state.whenOrNull(
        loading: () {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(
                color: AppColors.primary,
              ),
            ),
          );
          return null;
        },
        success: () {
          showSuccessDialog(context);
          return null;
        },
        failure: (errorMessage) {
          setupErrorState(context, errorMessage);
          return null;
        },
      ),
      child: SizedBox.shrink(),
    );
  }
}

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Signup Successful'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Congratulations, you have signed up successfully!'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              // ignore: deprecated_member_use
              foregroundColor: Colors.white,
              backgroundColor: AppColors.primary,
              // ignore: deprecated_member_use
              disabledForegroundColor: Colors.grey.withOpacity(0.38),
            ),
            onPressed: () {
              context.pushReplacement(AppRouter.kSignInView);
            },
            child: const Text('Continue'),
          ),
        ],
      );
    },
  );
}

void setupErrorState(BuildContext context, String error) {
  context.pop();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      icon: const Icon(
        Icons.error,
        color: Colors.red,
        size: 32,
      ),
      content: Text(
        error,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: context.isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Got it',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    ),
  );
}
