import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/utilies/styles.dart';
import 'package:my_bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/rating_book_details.dart';

class TitleBookDetails extends StatelessWidget {
  const TitleBookDetails({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 15),
      Text(
        textAlign: TextAlign.center,
        bookModel.volumeInfo.title ?? "",
        style: Styles.textStyle24.copyWith(fontSize: 31),
      ),
      Text(
        bookModel.volumeInfo.authors?[0] ?? "",
        style: Styles.textStyle20.copyWith(
          color: const Color(0xFF59ABD4),
        ),
      ),
      const SizedBox(height: 3),
      Center(child: RatingBookDetails())
    ]);
  }
}
