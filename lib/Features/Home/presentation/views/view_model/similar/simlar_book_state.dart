part of 'simlar_book_cubit.dart';

sealed class SimlarBookState extends Equatable {
  const SimlarBookState();

  @override
  List<Object> get props => [];
}

final class SimlarBookInitial extends SimlarBookState {}

final class SimilarBooksSuccess extends SimlarBookState {
  final List<BookModel> similarBooks;

  const SimilarBooksSuccess({required this.similarBooks});
}

final class SimilarBooksFailure extends SimlarBookState {
  final String err;

  const SimilarBooksFailure({required this.err});
}

final class SimilarBooksLoading extends SimlarBookState {}
