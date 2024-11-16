import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/utilies/styles.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/raring_and_price.dart';

class BestSellerdetails extends StatelessWidget {
  const BestSellerdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Harry Potter and the Goblet of Fire',
              style: Styles.textStyle20,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            const SizedBox(height: 5),
            Text(
              'J.K. Rowling',
              style: Styles.textStyle18.copyWith(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            RatingAndPriceWidget(),
          ],
        ),
      ),
    );
  }
}
