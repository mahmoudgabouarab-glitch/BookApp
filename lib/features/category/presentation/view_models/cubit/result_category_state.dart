part of 'result_category_cubit.dart';

sealed class ResultCategoryState extends Equatable {
  const ResultCategoryState();

  @override
  List<Object> get props => [];
}

final class ResultCategoryInitial extends ResultCategoryState {}

final class ResultCategoryLoading extends ResultCategoryState {}

final class ResultCategorySucces extends ResultCategoryState {
  final List<BookModels> books;
  const ResultCategorySucces(this.books);
}

final class ResultCategoryFailure extends ResultCategoryState {
  final String errormessage;

  const ResultCategoryFailure(this.errormessage);
}
