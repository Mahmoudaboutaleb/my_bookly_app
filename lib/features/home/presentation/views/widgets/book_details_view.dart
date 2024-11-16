import 'package:flutter/material.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BookDetailsViewBody(),
      ),
    );
  }
}
