import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/utilies/styles.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/rating_book_details.dart';

class TitleBookDetails extends StatelessWidget {
  const TitleBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 18),
      Text(
        'The Jungle Book',
        style: Styles.textStyle24.copyWith(fontSize: 32),
      ),
      Text(
        'Rodyard Kipling',
        style: Styles.textStyle22.copyWith(
          color: Colors.blueGrey,
        ),
      ),
      const SizedBox(height: 3),
      Center(child: RatingBookDetails())
    ]);
  }
}
