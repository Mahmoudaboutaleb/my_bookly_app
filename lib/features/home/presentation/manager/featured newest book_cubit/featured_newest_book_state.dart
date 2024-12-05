// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:my_bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class FeaturedNewestBookState {}

class FeaturedNewestBookInitial extends FeaturedNewestBookState {}

class FeaturedNewestBookLoading extends FeaturedNewestBookState {}

class FeaturedNewestBookSuccess extends FeaturedNewestBookState {
  List<BookModel> books = [];
  FeaturedNewestBookSuccess({
    required this.books,
  });
}

class FeaturedNewestBookFailure extends FeaturedNewestBookState {
  final String errorMessage;

  FeaturedNewestBookFailure({required this.errorMessage});
}
