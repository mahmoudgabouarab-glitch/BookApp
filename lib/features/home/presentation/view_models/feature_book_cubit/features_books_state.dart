part of 'features_books_cubit.dart';

sealed class FeaturesBooksState extends Equatable {
  const FeaturesBooksState();

  @override
  List<Object> get props => [];
}

class FeaturesBooksInitial extends FeaturesBooksState {}

class FeaturesBooksLoading extends FeaturesBooksState {}

class FeaturesBooksSucces extends FeaturesBooksState {
  final List<BookModels> books;
  const FeaturesBooksSucces(this.books);
}

class FeaturesBooksFailure extends FeaturesBooksState {
  final String errormessage;

  const FeaturesBooksFailure(this.errormessage);
}
