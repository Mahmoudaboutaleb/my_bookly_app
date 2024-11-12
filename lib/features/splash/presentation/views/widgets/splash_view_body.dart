import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/utilies/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin: Offset(0, 5), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
        ),
        SizedBox(height: 7),
        AnimatedBuilder(
            animation: slidingAnimation,
            builder: (BuildContext context, _) {
              return SlideTransition(
                position: slidingAnimation,
                child: Text(
                  textAlign: TextAlign.center,
                  'Read Free Books',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              );
            }),
      ],
    );
  }
}
