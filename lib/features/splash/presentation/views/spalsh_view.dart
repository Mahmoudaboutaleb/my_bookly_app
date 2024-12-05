import 'package:flutter/material.dart';
import 'package:my_bookly_app/features/splash/presentation/views/widgets/splash_view_body.dart';

class SpalshView extends StatelessWidget {
  const SpalshView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}
