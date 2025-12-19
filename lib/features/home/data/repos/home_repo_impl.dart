import 'package:BookApp/core/errors/falier.dart';
import 'package:BookApp/core/utils/api_servise.dart';
import 'package:BookApp/features/home/data/models/book_models/book_models.dart';
import 'package:BookApp/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServise apiServise;

  HomeRepoImpl(this.apiServise);

  @override
  Future<Either<Falier, List<BookModels>>> fetchNewestBooks() async {
    try {
      var data = await apiServise.get(
        endpoint:
            "volumes?filtering=free-ebooks&sorting=newest&q=subject:italy",
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
      return left(ServiseFalier(e.toString()));
    }
  }

  @override
  Future<Either<Falier, List<BookModels>>> fetchFeaturBooks() async {
    try {
      var data = await apiServise.get(
        endpoint: "volumes?filtering=free-ebooks&q=subject:english",
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
      return left(ServiseFalier(e.toString()));
    }
  }
  
  @override
  Future<Either<Falier, List<BookModels>>> fetchSimlerBooks({required String category})async {
     try {
      var data = await apiServise.get(
        endpoint:
            "volumes?sorting=relevance&q=subject:spanish",
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
      return left(ServiseFalier(e.toString()));
    }
  }
}
