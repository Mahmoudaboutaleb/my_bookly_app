import 'package:flutter/material.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        CustomBookDetailsAppbar(),
      ],
    );
  }
}
