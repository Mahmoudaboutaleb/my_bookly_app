import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly_app/features/home/data/repos/home_repo.dart';
import 'package:my_bookly_app/features/home/presentation/manager/similer_bool_cubit/similer_book_state.dart';

class SimilerBookCubit extends Cubit<SimilerBookState> {
  SimilerBookCubit(this.homeRepo) : super(SimilerBookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilerBooks({required String category}) async {
    emit(SimilerBookLoading());
    var result = await homeRepo.fetchSimilerBooks();

    result.fold((failure) {
      emit(SimilerBookFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(SimilerBookSuccess(bookModel: books));
    });
  }
}
