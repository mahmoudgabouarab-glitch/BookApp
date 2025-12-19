part of 'simller_books_cubit.dart';

sealed class SimllerBooksState extends Equatable {
  const SimllerBooksState();

  @override
  List<Object> get props => [];
}

final class SimllerBooksInitial extends SimllerBooksState {}

class SimllerBooksLoading extends SimllerBooksState {}

class SimllerBooksSucces extends SimllerBooksState {
  final List<BookModels> books;
  const SimllerBooksSucces(this.books);
}

class SimllerBooksFailure extends SimllerBooksState {
  final String errormessage;

  const SimllerBooksFailure(this.errormessage);
}
