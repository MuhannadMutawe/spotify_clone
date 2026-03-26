import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_app/common/helper/is_dark_mode.dart';
import 'package:spotify_app/core/config/themes/app_colors.dart';
import 'package:spotify_app/core/utils/app_router.dart';
import 'package:spotify_app/presentation/auth/manger/Sign_in/sign_in_cubit.dart';
import 'package:spotify_app/presentation/auth/manger/Sign_in/sign_in_state.dart';

class SignInBlocListener extends StatelessWidget {
  const SignInBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listenWhen: (previous, current) =>
          current is SignInLoading ||
          current is SignInSuccess ||
          current is SignInFailure,
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
          context.pop();
          context.pop();
          context.pushReplacement(AppRouter.kHomeView);
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
