import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly_app/core/utilies/app_route.dart';
import 'package:my_bookly_app/core/widgets/custom_error_widget.dart';
import 'package:my_bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:my_bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:my_bookly_app/features/home/presentation/manager/similer_bool_cubit/similer_book_cubit.dart';
import 'package:my_bookly_app/features/home/presentation/manager/similer_bool_cubit/similer_book_state.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/custom_image_feature.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBookCubit, SimilerBookState>(
      builder: (context, state) {
        if (state is SimilerBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.165,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRoute.kBookDetails,extra: state.bookModel[index]);},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: CustomImageFeature(
                        urlImage: state
                            .bookModel[index].volumeInfo.imageLinks.thumbnail),
                  ),
                );
              },
              itemCount: state.bookModel.length,
            ),
          );
        } else if (state is SimilerBookFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
