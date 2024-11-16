import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/utilies/styles.dart';

class RatingAndPriceWidget extends StatelessWidget {
  const RatingAndPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '19.99 €',
          style: Styles.textStyle20,
        ),
        Row(children: [
          Icon(Icons.star, color: Colors.yellow),
          Text("4.8", style: Styles.textStyleBold18),
          SizedBox(
            width: 7,
          ),
          Text("(2390)",
              style: Styles.textStyle16.copyWith(
                color: Colors.grey,
              )),
        ]),
      ],
    );
  }
}
