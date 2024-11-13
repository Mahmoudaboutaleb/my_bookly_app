import 'package:flutter/material.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeViewBody(),
        ],
      ),
    );
  }
}
