import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:my_bookly_app/core/widgets/custom_loading_indicator.dart';

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
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            imageUrl: urlImage,
            fit: BoxFit.fill,
            placeholder: (context, url) => const Center(
              child: CustomLoadingIndicator(),
            ),
            errorWidget: (context, url, error) => const Center(
              child: Icon(Icons.error, color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
