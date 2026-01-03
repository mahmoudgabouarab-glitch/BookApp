import 'package:BookApp/features/category/data/repos/result_category_repo.dart';
import 'package:BookApp/features/home/data/models/book_models/book_models.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'result_category_state.dart';

class ResultCategoryCubit extends Cubit<ResultCategoryState> {
  ResultCategoryCubit(this.homeRepo, {required this.quary})
    : super(ResultCategoryInitial());

  final ResultCategoryRepo homeRepo;
  final String quary;
  Future<void> fetchresultBooks() async {
    emit(ResultCategoryLoading());
    final result = await homeRepo.fetchresultBooks(quary: quary);
    result.fold(
      (ifLeft) {
        emit(ResultCategoryFailure(ifLeft.errormessage));
      },
      (ifRight) {
        emit(ResultCategorySucces(ifRight));
      },
    );
  }
}
