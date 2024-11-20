import 'package:dartz/dartz.dart';
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
      var data = await apiService.get(
          endPoint:
              "volumes?Filtering-free-ebooks &Sorting=newest &q=subject: Programming");
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeatureBook() {
    throw UnimplementedError();
  }
}
