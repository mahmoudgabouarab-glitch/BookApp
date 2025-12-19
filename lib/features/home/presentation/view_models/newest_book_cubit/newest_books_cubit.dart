import 'package:BookApp/features/home/data/models/book_models/book_models.dart';
import 'package:BookApp/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  HomeRepo homeRepo;

  Future<void> fetchnewestbooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (ifLeft) {
        emit(NewestBooksFailure(ifLeft.errormessage));
      },
      (ifRight) {
        emit(NewestBooksSucces(ifRight));
      },
    );
  }
}
