import 'package:BookApp/features/home/data/models/book_models/book_models.dart';
import 'package:BookApp/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'simller_books_state.dart';

class SimllerBooksCubit extends Cubit<SimllerBooksState> {
  SimllerBooksCubit(this.homeRepo) : super(SimllerBooksInitial());
  HomeRepo homeRepo;

  Future<void> fetchsimllerbooks({required String category}) async {
    emit(SimllerBooksLoading());
    var result = await homeRepo.fetchSimlerBooks(category: category);
    result.fold(
      (ifLeft) {
        emit(SimllerBooksFailure(ifLeft.errormessage));
      },
      (ifRight) {
        emit(SimllerBooksSucces(ifRight));
      },
    );
  }
}
