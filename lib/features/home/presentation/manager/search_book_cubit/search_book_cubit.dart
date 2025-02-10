import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly_app/features/home/data/repos/home_repo.dart';
import 'package:my_bookly_app/features/home/presentation/manager/search_book_cubit/search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  SearchBookCubit(this.homeRepo) : super(SearchBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSerchBook(String querry) async {
    // emit(SearchBookLoading());
    var data = await homeRepo.fetchSearchBooks(querry: querry);
    data.fold((failure) {
      emit(SearchBookFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(SearchBookSuccess(books: books));
    });
  }
}
