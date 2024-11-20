import 'package:dartz/dartz.dart';
import 'package:my_bookly_app/core/utilies/failures.dart';
import 'package:my_bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchFeatureBook();
  Future<Either<Failures, List<BookModel>>> fetchNewsetBook();
}
