import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/utilies/assets.dart';

class BestSellerVistViewItem extends StatelessWidget {
  const BestSellerVistViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height * .16,
      child: AspectRatio(
        aspectRatio: 2.35 / 4,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey),
              image: DecorationImage(
                  image: AssetImage(AssetsData.testImage), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
