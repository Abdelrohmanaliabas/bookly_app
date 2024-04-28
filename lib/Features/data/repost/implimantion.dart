import 'package:bookly_app/Features/data/models/books_model/books_model.dart';
import 'package:bookly_app/Features/data/repost/home_repo.dart';
import 'package:bookly_app/core/error/failure.dart';
import 'package:bookly_app/core/utlis/api_serves.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeReboImpl implements HomeRebo {
  final ApiService apiService;
  HomeReboImpl(this.apiService);
  @override
  Future<Either<Failure, List<BooksModel>>> fetchfreeBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&startIndex=20&q=Programing');

      List<BooksModel> books = [];
      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeatureBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=Programing');

      List<BooksModel> books = [];
      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }
}
