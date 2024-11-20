import 'package:flutter/material.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/custom_image_feature.dart';

class FeatureBookListViewWidget extends StatelessWidget {
  const FeatureBookListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: CustomImageFeature(),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
