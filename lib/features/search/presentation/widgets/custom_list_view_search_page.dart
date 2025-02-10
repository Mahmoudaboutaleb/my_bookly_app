import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly_app/core/utilies/styles.dart';
import 'package:my_bookly_app/core/widgets/custom_error_widget.dart';
import 'package:my_bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:my_bookly_app/features/home/presentation/manager/search_book_cubit/search_book_cubit.dart';
import 'package:my_bookly_app/features/home/presentation/manager/search_book_cubit/search_book_state.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';

class CustomListViewSearchPage extends StatelessWidget {
  const CustomListViewSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBookCubit, SearchBookState>(
      builder: (context, state) {
        if (state is SearchBookLoading) {
          return const CustomLoadingIndicator();
        } else if (state is SearchBookSuccess) {
          if (state.books.isEmpty) {
            return Center(
              child: Text(
                'No results found. Try searching for another book.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            );
          }
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  child: CustomListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              },
            ),
          );
        } else if (state is SearchBookFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                textAlign: TextAlign.center,
                'Start searching for books using the search bar above.',
                style: Styles.textStyle16,
              ),
            ),
          );
        }
      },
    );
  }
}
