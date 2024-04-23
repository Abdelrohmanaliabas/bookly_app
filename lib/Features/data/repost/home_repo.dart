import 'package:bookly_app/Features/data/models/books_model/books_model.dart';
import 'package:bookly_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRebo {
  Future<Either<Failure, List<BooksModel>>> fetchfreeBooks();
  Future<Either<Failure, List<BooksModel>>> fetchFeatureBooks();
}
