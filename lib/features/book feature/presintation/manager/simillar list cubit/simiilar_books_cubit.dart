import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book model/book_model.dart';
import '../../../data/repositry/book_repo.dart';

part 'simiilar_books_state.dart';

class SimiilarBooksCubit extends Cubit<SimiilarBooksState> {
  SimiilarBooksCubit(this.bookRepo) : super(SimiilarBooksInitial());
  final BookRepo bookRepo;

  Future<void> fetchSimillarBooks({required String category}) async {
    emit(SimiilarBooksLoading());

    var result = await bookRepo.fetchSimiilarBooks(category: category);

    result.fold(
      (failure) {
        emit(SimiilarBooksFailure(failure.errMessage));
      },
      (books) {
        emit(SimiilarBooksSuccess(books));
      },
    );
  }
}
