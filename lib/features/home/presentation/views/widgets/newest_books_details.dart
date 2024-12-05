import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/utilies/styles.dart';
import 'package:my_bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/raring_and_price.dart';

class BestSellerdetails extends StatelessWidget {
  const BestSellerdetails({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bookModel.volumeInfo.title ?? "Title",
              style: Styles.textStyle20,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text(
              bookModel.volumeInfo.authors?[0] ?? "unknown",
              style: Styles.textStyle18.copyWith(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            RatingAndPriceWidget(
              rating: 4.8,
              count: "(2670)",
            ),
          ],
        ),
      ),
    );
  }
}
