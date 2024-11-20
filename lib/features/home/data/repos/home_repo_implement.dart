import 'package:dartz/dartz.dart';
import 'package:my_bookly_app/core/utilies/failures.dart';
import 'package:my_bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:my_bookly_app/features/home/data/repos/home_repo.dart';

class HomeRepoImplement implements HomeRepo {
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBook() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeatureBook() {
    throw UnimplementedError();
  }
}
