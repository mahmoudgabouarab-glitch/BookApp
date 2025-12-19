import 'package:BookApp/core/errors/falier.dart';
import 'package:BookApp/features/home/data/models/book_models/book_models.dart';
import 'package:dartz/dartz.dart';

abstract class ResultCategoryRepo {
  Future<Either<Falier, List<BookModels>>> fetchresultBooks({
    required String quary,
  });
}
