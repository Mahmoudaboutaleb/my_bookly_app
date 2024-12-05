// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/utilies/styles.dart';
import 'package:my_bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:url_launcher/url_launcher.dart';

class PriceAndFreeReviewBookDetails extends StatelessWidget {
  const PriceAndFreeReviewBookDetails({super.key, required this.bookModel});
  final BookModel bookModel;

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
              "Free",
              style: Styles.textStyle20.copyWith(color: Colors.black),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
          child: GestureDetector(
            onTap: () async {
              final Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);

              if (await canLaunchUrl(uri)) {
                await launchUrl(uri, mode: LaunchMode.externalApplication);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(
                      "Cannot open the link",
                      style: Styles.textStyle16.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                );
              }
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 13, horizontal: 30),
              color: Colors.deepOrangeAccent,
              child: Text(
                  checkPreview(
                    bookModel.volumeInfo.previewLink!,
                  ),
                  style: Styles.textStyle20.copyWith(color: Colors.white)),
            ),
          ),
        ),
      ],
    );
  }

  String checkPreview(String text) {
    if (bookModel.volumeInfo.previewLink == null) {
      return text = "Not Available";
    } else {
      return text = "Free Preview";
    }
  }
}
