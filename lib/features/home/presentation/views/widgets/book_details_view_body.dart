import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/utilies/styles.dart';
import 'package:my_bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/custom_image_feature.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/price_and_free_review_book_details.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/title_book_details.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            CustomBookDetailsAppbar(),
            const SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.265),
              child: CustomImageFeature(
                urlImage: bookModel.volumeInfo.imageLinks.thumbnail,
              ),
            ),
            TitleBookDetails(
              bookModel: bookModel,
            ),
            SizedBox(
              height: 25,
            ),
            PriceAndFreeReviewBookDetails(),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You can also like",
                    style: Styles.textStyle18,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            SimilarBookListView(
              bookModel: bookModel,
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
