import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:my_bookly_app/constans.dart';
import 'package:my_bookly_app/features/splash/presentation/views/spalsh_view.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: SpalshView(),
    );
  }
}
