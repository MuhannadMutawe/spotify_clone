import 'package:flutter/material.dart';
import 'package:spotify_app/core/config/themes/app_theme.dart';
import 'package:spotify_app/presentation/splash/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: SplashView(),
    );
  }
}
