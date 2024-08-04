part of 'simiilar_books_cubit.dart';

sealed class SimiilarBooksState extends Equatable {
  const SimiilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimiilarBooksInitial extends SimiilarBooksState {}

final class SimiilarBooksFailure extends SimiilarBooksState {
  final String errMessage;

  const SimiilarBooksFailure(this.errMessage);
}

final class SimiilarBooksSuccess extends SimiilarBooksState {
  final List<BookModel> books;

  const SimiilarBooksSuccess(this.books);
}

final class SimiilarBooksLoading extends SimiilarBooksState {}
