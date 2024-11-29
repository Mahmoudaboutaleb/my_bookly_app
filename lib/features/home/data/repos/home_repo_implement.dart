// ignore_for_file: avoid_print

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
  Future<Either<Failures, List<BookModel>>> fetchNewsetBook() async {
    try {
      // جلب البيانات من API
      var data = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming");
      print("API Response (Newest Books): $data");

      // التحقق من وجود عناصر في الاستجابة
      if (data["items"] == null) {
        print("No items found in response");
        return left(ServerFailure("No items found"));
      }

      // معالجة العناصر وإضافتها إلى القائمة
      List<BookModel> books = [];
      for (var item in data["items"]) {
        print("Processing item (Newest Books): $item");
        books.add(BookModel.fromJson(item));
      }

      print("Successfully processed ${books.length} books.");
      return right(books);
    } catch (e) {
      // التعامل مع الأخطاء
      print("Error occurred (Newest Books): $e");
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeatureBook() async {
    try {
      // جلب البيانات من API
      var data = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest &q=computer science");
      print("API Response (Featured Books): $data");

      // التحقق من وجود عناصر في الاستجابة
      if (data["items"] == null) {
        print("No items found in response");
        return left(ServerFailure("No items found"));
      }

      // معالجة العناصر وإضافتها إلى القائمة
      List<BookModel> books = [];
      for (var item in data["items"]) {
        print("Processing item (Featured Books): $item");
        books.add(BookModel.fromJson(item));
      }

      print("Successfully processed ${books.length} featured books.");
      return right(books);
    } catch (e) {
      // التعامل مع الأخطاء
      print("Error occurred (Featured Books): $e");
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
