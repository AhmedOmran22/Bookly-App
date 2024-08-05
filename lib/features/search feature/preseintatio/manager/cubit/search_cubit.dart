import 'package:bloc/bloc.dart';
import 'package:bookly/features/book%20feature/data/repositry/book_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../../book feature/data/models/book model/book_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.bookRepo) : super(SearchInitial());
  final BookRepo bookRepo;

  Future<void> fecthSearchBooks(String category) async {
    emit(SearchLoading());

    var result = await bookRepo.fetchSearchBooks(category: category);

    result.fold(
      (failure) {
        emit(SearchFailure(failure.errMessage));
      },
      (books) {
        emit(SearchSucess(books));
      },
    );
  }
}
