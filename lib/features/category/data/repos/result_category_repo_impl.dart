import 'package:BookApp/core/errors/falier.dart';
import 'package:BookApp/core/utils/api_servise.dart';
import 'package:BookApp/features/category/data/repos/result_category_repo.dart';
import 'package:BookApp/features/home/data/models/book_models/book_models.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ResultCategoryRepoImpl implements ResultCategoryRepo {
  final ApiServise apiServise;

  ResultCategoryRepoImpl(this.apiServise);

  @override
  Future<Either<Falier, List<BookModels>>> fetchresultBooks({required String quary}) async {
    try {
      final data = await apiServise.get(endpoint: "volumes?q=$quary");

      List<BookModels> books = [];
      for (var item in data['items']) {
        books.add(BookModels.fromJson(item));
      }

      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServiseFalier.fromdioException(e));
      }
      return Left(ServiseFalier(e.toString()));
    }
  }
}
