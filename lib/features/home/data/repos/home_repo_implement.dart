import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_bookly_app/core/utilies/api_service.dart';
import 'package:my_bookly_app/core/utilies/failures.dart';
import 'package:my_bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:my_bookly_app/features/home/data/repos/home_repo.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplement({required this.apiService});

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest &q=computer science");

      if (data["items"] == null) {
        return left(ServerFailure("No items found"));
      }

      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeatureBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming");

      if (data["items"] == null) {
        return left(ServerFailure("No items found"));
      }

      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchSimilerBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest&q=programming+language");

      if (data["items"] == null) {
        return left(ServerFailure("No items found"));
      }

      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
