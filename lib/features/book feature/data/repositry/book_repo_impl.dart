import 'dart:developer';

import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/book%20feature/data/models/book%20model/book_model.dart';
import 'package:bookly/features/book%20feature/data/repositry/book_repo.dart';
import 'package:dartz/dartz.dart';

class BookRepoImpl implements BookRepo {
  final ApiService apiService;

  BookRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest',
      );
      List<BookModel> books = [];
      for (var book in data['items']) {
        books.add(BookModel.fromJson(book));
      }

      return right(books);
    } on Exception catch (e) {
      log(e.toString());
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
