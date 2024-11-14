import 'package:flutter/material.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/best_sellerl_ist_view_item.dart';

class BestSellerlIstViewWidget extends StatelessWidget {
  const BestSellerlIstViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BestSellerVistViewItem(),
        ],
      ),
    );
  }
}
