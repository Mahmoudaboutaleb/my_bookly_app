import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly_app/core/utilies/app_route.dart';
import 'package:my_bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/newest_books_details.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/custom_image_feature.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoute.kBookDetails, extra: bookModel);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
        child: Row(
          children: [
            SizedBox(
              height: height * .17,
              child: CustomImageFeature(
                  urlImage: bookModel.volumeInfo.imageLinks.thumbnail),
            ),
            BestSellerdetails(
              bookModel: bookModel,
            ),
          ],
        ),
      ),
    );
  }
}
