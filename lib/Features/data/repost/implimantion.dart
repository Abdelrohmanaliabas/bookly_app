import 'package:bookly_app/Features/data/models/books_model/books_model.dart';
import 'package:bookly_app/Features/data/repost/home_repo.dart';
import 'package:bookly_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';

class HomeReboImpl implements HomeRebo {
  @override
  Future<Either<Failure, List<BooksModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }
}
