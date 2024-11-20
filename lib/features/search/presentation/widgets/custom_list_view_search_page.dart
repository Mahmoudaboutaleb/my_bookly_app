import 'package:flutter/material.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';

class CustomListViewSearchPage extends StatelessWidget {
  const CustomListViewSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: BestSellerlistView());
  }
}
