import 'package:flutter/material.dart';

import 'package:spotify_app/presentation/auth/views/signup_or_signin_widget/signup_or_signin_view_body.dart';

class SignUpOrSignInView extends StatelessWidget {
  const SignUpOrSignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SignupOrSigninViewBody(),
    );
  }
}
