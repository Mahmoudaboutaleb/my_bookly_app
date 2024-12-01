import 'package:my_bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class SimilerBookState {}

class SimilerBookInitial extends SimilerBookState {}

class SimilerBookLoading extends SimilerBookState {}

class SimilerBookSuccess extends SimilerBookState {
  List<BookModel> bookModel;

  SimilerBookSuccess({required this.bookModel});
}

class SimilerBookFailure extends SimilerBookState {
  final String errorMessage;

  SimilerBookFailure({required this.errorMessage});
}
