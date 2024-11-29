import 'package:flutter/material.dart';

class CustomImageFeature extends StatelessWidget {
  final String urlImage;
  const CustomImageFeature({super.key, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey),
            image: DecorationImage(image: NetworkImage(urlImage))),
      ),
    );
  }
}
