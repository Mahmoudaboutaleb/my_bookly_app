import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly_app/features/home/data/repos/home_repo.dart';
import 'package:my_bookly_app/features/home/presentation/manager/featured%20newest%20book_cubit/featured_newest_book_state.dart';

class FeaturedNewestBookCubit extends Cubit<FeaturedNewestBookState> {
  FeaturedNewestBookCubit(this.homeRepo) : super(FeaturedNewestBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestdBook() async {
    emit(FeaturedNewestBookLoading());
    var result = await homeRepo.fetchNewsetBooks();

    result.fold((failed) {
      emit(FeaturedNewestBookFailure(errorMessage: failed.errorMessage));
    }, (books) {
      emit(FeaturedNewestBookSuccess(books: books));
    });
  }
}
