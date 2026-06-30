import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:radwa_back/Features/Home/data/repos/home_repo.dart';

import '../../../../data/models/book_model/book_model.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeatureBooksInitial());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeatureBooksFailer(err: failure.errMessage));
      },
      (book) {
        emit(FeatureBooksSuccess(books: book));
      },
    );
  }
}
