import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return customAppBar();
  }

  customAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 45),
      child: customAppBar(),
    );
  }
}
