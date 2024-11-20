import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/utilies/styles.dart';

class PriceAndFreeReviewBookDetails extends StatelessWidget {
  const PriceAndFreeReviewBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 13, horizontal: 30),
            color: Colors.white,
            child: Text(
              "19.99€",
              style: Styles.textStyle20.copyWith(color: Colors.black),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 13, horizontal: 30),
            color: Colors.deepOrangeAccent,
            child: Text("Free Preview", style: Styles.textStyle20),
          ),
        ),
      ],
    );
  }
}
