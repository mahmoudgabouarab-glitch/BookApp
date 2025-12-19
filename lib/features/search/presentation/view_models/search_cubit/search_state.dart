part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSucces extends SearchState {
  final List<BookModels> books;
  const SearchSucces(this.books);
}

final class SearchFailure extends SearchState {
  final String errormessage;

  const SearchFailure(this.errormessage);
}
