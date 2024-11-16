import 'package:flutter/material.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/features_list_view_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppbar(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: FeatureBookListViewWidget(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
            child: Text(
              "Best Seller",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          BestSellerlistView(),
        ],
      ),
    );
  }
}
