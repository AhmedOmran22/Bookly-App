import 'package:bloc/bloc.dart';
import 'package:bookly/features/book%20feature/data/repositry/book_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book model/book_model.dart';

part 'newst_books_state.dart';

class NewstBooksCubit extends Cubit<NewstBooksState> {
  NewstBooksCubit(this.bookRepo) : super(NewstBooksInitial());

  final BookRepo bookRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewstBooksLoading());

    var result = await bookRepo.fetchNewestBooks();

    result.fold(
      (failure) {
        emit(NewstBooksFailure(failure.errMessage));
      },
      (books) {
        emit(NewstBooksSuccess(books));
      },
    );
  }
}
