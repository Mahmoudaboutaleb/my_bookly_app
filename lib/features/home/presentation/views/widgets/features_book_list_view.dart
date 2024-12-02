import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly_app/core/utilies/app_route.dart';
import 'package:my_bookly_app/core/widgets/custom_error_widget.dart';
import 'package:my_bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:my_bookly_app/features/home/presentation/manager/featured%20book_cubit/featured_book_cubit.dart';
import 'package:my_bookly_app/features/home/presentation/manager/featured%20book_cubit/featured_book_state.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/custom_image_feature.dart';

class FeatureBookListViewWidget extends StatelessWidget {
  const FeatureBookListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRoute.kBookDetails,
                            extra: state.books[index]);
                      },
                      child: CustomImageFeature(
                          urlImage: state
                              .books[index].volumeInfo.imageLinks.thumbnail),
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBookFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
