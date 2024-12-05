// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:my_bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class FeaturedBookState {}

class FeaturedBookInitial extends FeaturedBookState {}

class FeaturedBookLoading extends FeaturedBookState {}

class FeaturedBookSuccess extends FeaturedBookState {
  List<BookModel> books = [];
  FeaturedBookSuccess({
    required this.books,
  });
}

class FeaturedBookFailure extends FeaturedBookState {
  final String errorMessage;

  FeaturedBookFailure({required this.errorMessage});
}
