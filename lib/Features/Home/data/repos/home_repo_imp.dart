// Step 3

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:radwa_back/Features/Home/data/models/book_model/book_model.dart';
import 'package:radwa_back/Features/Home/data/repos/home_repo.dart';
import 'package:radwa_back/constans.dart';
import 'package:radwa_back/core/errors/failures.dart';
import 'package:radwa_back/core/utils/api_service.dart';

class HomeReoImpl extends HomeRepo {
  final ApiService apiService;
  HomeReoImpl(this.apiService);

  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?q=subject:programming&Filtering=newest&key=$kApiKey',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      print("${books}🍕🍕🍕🍕🍕🍕🍕🍕🍕🍕");
      return right(books);
    } catch (e) {
      if (e is DioException) {
        print("${ServerFailure.fromDioError(e)}🍕🍕🍕🍕🍕🍕🍕🍕🍕🍕");
        return left(ServerFailure.fromDioError(e));
      }
      print("${ServerFailure(e.toString())}🍕🍕🍕🍕🍕🍕🍕🍕🍕🍕");
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?q=subject:programming&key=$kApiKey',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchSimilarBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?q=subject:programming&Sorting=relevance&key=$kApiKey',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException)
        return left(ServerFailure.fromDioError(e));
      else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchSearchResult(
    String word,
  ) async {
    try {
      var data = await apiService.get(
        endPoint: "volumes?q=$word&Sorting=relevance&key=$kApiKey",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      print("${books}🍕🍕🍕🍕🍕🍕🍕🍕🍕🍕");
      return right(books);
    } catch (e) {
      if (e is DioException) {
        print("${ServerFailure.fromDioError(e)}🍕🍕🍕🍕🍕🍕🍕🍕🍕🍕");
        return left(ServerFailure.fromDioError(e));
      }
      print("${ServerFailure(e.toString())}🍕🍕🍕🍕🍕🍕🍕🍕🍕🍕");
      return left(ServerFailure(e.toString()));
    }
  }
}
