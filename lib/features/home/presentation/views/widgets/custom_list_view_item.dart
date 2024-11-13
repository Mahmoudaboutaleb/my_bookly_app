import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/utilies/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height * .23,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey),
              image: DecorationImage(
                  image: AssetImage(AssetsData.testImage), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
