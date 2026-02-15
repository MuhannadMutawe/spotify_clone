import 'package:flutter/material.dart';
import 'package:spotify_app/presentation/intro/views/widgets/get_started_view_body.dart';


class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetStartedViewBody(),
    );
  }
}
