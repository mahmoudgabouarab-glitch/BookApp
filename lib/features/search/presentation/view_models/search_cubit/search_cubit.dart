import 'package:BookApp/features/home/data/models/book_models/book_models.dart';
import 'package:BookApp/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchInitial());

  final SearchRepo homeRepo;

  Future<void> fetchsearchBooks(String query) async {
    if (query.isEmpty) {
      emit(SearchInitial());
      return;
    }

    emit(SearchLoading());

    final result = await homeRepo.fetchsearchBooks(query: query);
    result.fold(
      (ifLeft) {
        emit(SearchFailure(ifLeft.errormessage));
      },
      (ifRight) {
        emit(SearchSucces(ifRight));
      },
    );
  }
}
