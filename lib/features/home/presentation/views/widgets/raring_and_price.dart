import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/utilies/styles.dart';

class RatingAndPriceWidget extends StatelessWidget {
  const RatingAndPriceWidget({super.key, this.rating, this.count});
  final double? rating;
  final String? count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          " Free",
          style: Styles.textStyle20,
        ),
        Row(children: [
          Icon(Icons.star, color: Colors.yellow),
          Text(rating.toString(), style: Styles.textStyleBold18),
          SizedBox(
            width: 7,
          ),
          Text(count.toString(),
              style: Styles.textStyle16.copyWith(
                color: Colors.grey,
              )),
        ]),
      ],
    );
  }
}
