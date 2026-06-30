import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:radwa_back/Features/Home/data/models/book_model/book_model.dart';
import 'package:radwa_back/Features/Home/data/repos/home_repo.dart';

part 'search_result_state.dart';

class SearchResultCubit extends Cubit<SearchResultState> {
  SearchResultCubit(this.homeRepo) : super(SearchResultInitial());

  final HomeRepo homeRepo;
  Future<void> searchFunctionCubit(String word) async {
    emit(SearchResultLoading());
    var result = await homeRepo.fetchSearchResult(word);
    result.fold(
      (failure) {
        emit(SearchResultFailure(err: failure.errMessage));
      },
      (data) {
        emit(SearchResultSuccess(searchBook: data));
      },
    );
  }
}
