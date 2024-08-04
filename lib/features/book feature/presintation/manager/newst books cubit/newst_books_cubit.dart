import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book model/book_model.dart';
import '../../../data/repositry/book_repo_impl.dart';

part 'newst_books_state.dart';

class NewstBooksCubit extends Cubit<NewstBooksState> {
  NewstBooksCubit(this.bookRepoImpl) : super(NewstBooksInitial());

  final BookRepoImpl bookRepoImpl;

  Future<void> fetchFeaturedBooks() async {
    emit(NewstBooksLoading());

    var result = await bookRepoImpl.fetchNewestBooks();

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
