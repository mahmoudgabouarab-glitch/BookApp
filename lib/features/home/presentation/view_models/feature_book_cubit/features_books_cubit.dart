import 'package:BookApp/features/home/data/models/book_models/book_models.dart';
import 'package:BookApp/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'features_books_state.dart';

class FeaturesBooksCubit extends Cubit<FeaturesBooksState> {
  FeaturesBooksCubit(this.homeRepo) : super(FeaturesBooksInitial());
  HomeRepo homeRepo;

  Future<void> fetchfeaturbooks() async {
    emit(FeaturesBooksLoading());
    var result = await homeRepo.fetchFeaturBooks();
    result.fold(
      (ifLeft) {
        emit(FeaturesBooksFailure(ifLeft.errormessage));
      },
      (ifRight) {
        emit(FeaturesBooksSucces(ifRight));
      },
    );
  }
}
