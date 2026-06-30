import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:radwa_back/Features/Home/data/models/book_model/book_model.dart';
import 'package:radwa_back/Features/Home/data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());

    var result = await homeRepo.fetchBestSellerBooks();
    result.fold(
      (failer) {
        emit(NewestBooksFailer(err: failer.errMessage));
      },
      (book) {
        emit(NewestBooksSuccess(books: book));
      },
    );
  }
}
