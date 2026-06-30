// Step 2

import 'package:dartz/dartz.dart';
import 'package:radwa_back/Features/Home/data/models/book_model/book_model.dart';
import 'package:radwa_back/core/errors/failures.dart';

abstract class HomeRepo {
  // هنحدد جوا الفيتشر دى انا بعمل اي
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failures, List<BookModel>>> fetchSimilarBooks();
  Future<Either<Failures, List<BookModel>>> fetchSearchResult(String word);
}

// الهدف من الريبو باترن انها بتخليك تحدد الميثودس اللي هيتم تنفيزها ف الفيتشر بدون متحدد هيتم تنفيذها ازاى 
// عندك كلاس فيه كل الميثودس اللي بستخدمها 
// لو عايزه انفذ الميثود بكذ طريقه 