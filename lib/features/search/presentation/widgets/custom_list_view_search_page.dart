import 'package:flutter/material.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/newest_books_list_view.dart';

class CustomListViewSearchPage extends StatelessWidget {
  const CustomListViewSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: BestSellerlistView());
  }
}
