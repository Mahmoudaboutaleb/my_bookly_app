import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/utilies/styles.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/best_sellerl_ist_view_widget.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/features_list_view_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppbar(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FeatureBookListViewWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Best Saller",
            style: Styles.titleMedia,
          ),
        ),
        BestSellerlIstViewWidget(),
      ],
    );
  }
}
