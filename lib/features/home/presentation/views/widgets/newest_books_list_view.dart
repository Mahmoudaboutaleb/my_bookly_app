import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly_app/core/widgets/custom_error_widget.dart';
import 'package:my_bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:my_bookly_app/features/home/presentation/manager/featured%20newest%20book_cubit/featured_newest_book_cubit.dart';
import 'package:my_bookly_app/features/home/presentation/manager/featured%20newest%20book_cubit/featured_newest_book_state.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';

class BestSellerlistView extends StatelessWidget {
  const BestSellerlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedNewestBookCubit, FeaturedNewestBookState>(
      builder: (context, state) {
        if (state is FeaturedNewestBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CustomListViewItem(
                      bookModel: state.books[index],
                    ),
                  );
                }),
          );
        } else if (state is FeaturedNewestBookFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
