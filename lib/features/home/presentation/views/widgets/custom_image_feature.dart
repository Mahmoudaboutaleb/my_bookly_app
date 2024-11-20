import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/utilies/assets.dart';

class CustomImageFeature extends StatelessWidget {
  const CustomImageFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey),
            image: DecorationImage(
                image: AssetImage(AssetsData.testImage), fit: BoxFit.cover)),
      ),
    );
  }
}
