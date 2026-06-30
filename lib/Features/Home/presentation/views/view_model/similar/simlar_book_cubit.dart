import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:radwa_back/Features/Home/data/repos/home_repo.dart' show HomeRepo;

import '../../../../data/models/book_model/book_model.dart';

part 'simlar_book_state.dart';

class SimlarBookCubit extends Cubit<SimlarBookState> {
  SimlarBookCubit(this.homeRepo) : super(SimlarBookInitial());
  
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks() async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks();
    result.fold(
      (failure) {
        emit(SimilarBooksFailure(err: failure.toString()));
      },
      (books) {
        emit(SimilarBooksSuccess(similarBooks: books));
      },
    );
  }
}