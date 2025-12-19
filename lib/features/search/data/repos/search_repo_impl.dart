import 'package:BookApp/core/errors/falier.dart';
import 'package:BookApp/core/utils/api_servise.dart';
import 'package:BookApp/features/home/data/models/book_models/book_models.dart';
import 'package:BookApp/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiServise apiServise;

  SearchRepoImpl(this.apiServise);

  @override
  Future<Either<Falier, List<BookModels>>> fetchsearchBooks({
    required String query,
  }) async {
    try {
      final data = await apiServise.get(
        endpoint: "volumes?q=$query",
      );

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
