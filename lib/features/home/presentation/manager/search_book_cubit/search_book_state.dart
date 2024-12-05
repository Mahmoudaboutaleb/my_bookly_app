// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:my_bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class SearchBookState {}

class SearchBookInitial extends SearchBookState {}

class SearchBookLoading extends SearchBookState {}

class SearchBookSuccess extends SearchBookState {
  final List<BookModel> books;
  SearchBookSuccess({
    required this.books,
  });
}

class SearchBookFailure extends SearchBookState {
  final String errorMessage;
  SearchBookFailure({
    required this.errorMessage,
  });
}
