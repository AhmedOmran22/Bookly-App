import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../models/book model/book_model.dart';

abstract class BookRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimiilarBooks({
    required String category,
  });
}
