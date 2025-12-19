part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksSucces extends NewestBooksState {
  final List<BookModels> books;
  const NewestBooksSucces(this.books);
}

class NewestBooksFailure extends NewestBooksState {
  final String errormessage;

  const NewestBooksFailure(this.errormessage);
}
