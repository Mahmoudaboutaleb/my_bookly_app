import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly_app/features/home/data/repos/home_repo.dart';
import 'package:my_bookly_app/features/home/presentation/manager/featured%20book_cubit/featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBook() async {
    emit(FeaturedBookLoading());
    var result = await homeRepo.fetchFeatureBook();

    result.fold((failed) {
      emit(FeaturedBookFailure(errorMessage: failed.errorMessage));
    }, (books) {
      emit(FeaturedBookSuccess(books: books));
    });
  }
}
