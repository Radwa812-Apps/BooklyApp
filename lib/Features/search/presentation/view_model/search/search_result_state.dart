part of 'search_result_cubit.dart';

sealed class SearchResultState extends Equatable {
  const SearchResultState();

  @override
  List<Object> get props => [];
}

final class SearchResultInitial extends SearchResultState {}

final class SearchResultLoading extends SearchResultState {}

final class SearchResultSuccess extends SearchResultState {
  final List<BookModel> searchBook;

  const SearchResultSuccess({required this.searchBook});
}

final class SearchResultFailure extends SearchResultState {
  final String err;

 const SearchResultFailure({required this.err});

}
