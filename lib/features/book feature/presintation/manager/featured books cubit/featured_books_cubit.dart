import 'package:bloc/bloc.dart';
import 'package:bookly/features/book%20feature/data/repositry/book_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book model/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.bookRepo) : super(FeaturedBooksInitial());

  final BookRepo bookRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    var result = await bookRepo.fetchFeaturedBooks();

    result.fold(
      (failure) {
        emit(FeaturedBooksFailure(failure.errMessage));
      },
      (books) {
        emit(FeaturedBooksSuccess(books));
      },
    );
  }
}
