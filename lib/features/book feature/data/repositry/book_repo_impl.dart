import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/book%20feature/data/models/book%20model/book_model.dart';
import 'package:bookly/features/book%20feature/data/repositry/book_repo.dart';
import 'package:dartz/dartz.dart';

class BookRepoImpl implements BookRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
