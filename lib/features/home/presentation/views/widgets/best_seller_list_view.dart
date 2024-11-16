import 'package:flutter/material.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';

class BestSellerlistView extends StatelessWidget {
  const BestSellerlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: BestSellerListViewItem(),
            );
          }),
    );
  }
}
