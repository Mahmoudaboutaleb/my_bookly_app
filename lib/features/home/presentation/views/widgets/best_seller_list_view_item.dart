import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/utilies/assets.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/best_seller_details.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Row(
        children: [
          SizedBox(
            height: height * .16,
            child: AspectRatio(
              aspectRatio: 2.35 / 4,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey),
                    image: DecorationImage(
                        image: AssetImage(AssetsData.testImage),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          BestSellerdetails(),
        ],
      ),
    );
  }
}
