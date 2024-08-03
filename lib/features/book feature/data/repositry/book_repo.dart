import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../models/book model/book_model.dart';

abstract class BookRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
