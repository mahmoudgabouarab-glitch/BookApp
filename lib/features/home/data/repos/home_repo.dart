import 'package:BookApp/core/errors/falier.dart';
import 'package:BookApp/features/home/data/models/book_models/book_models.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Falier, List<BookModels>>> fetchFeaturBooks();
  Future<Either<Falier, List<BookModels>>> fetchNewestBooks();
  Future<Either<Falier, List<BookModels>>> fetchSimlerBooks({
    required String category,
  });
}
