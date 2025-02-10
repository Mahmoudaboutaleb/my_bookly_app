import 'package:dartz/dartz.dart';
import 'package:my_bookly_app/core/utilies/failures.dart';
import 'package:my_bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchFeatureBooks();
  Future<Either<Failures, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failures, List<BookModel>>> fetchSimilerBooks();
  Future<Either<Failures, List<BookModel>>> fetchSearchBooks(
      {required String querry});
}
