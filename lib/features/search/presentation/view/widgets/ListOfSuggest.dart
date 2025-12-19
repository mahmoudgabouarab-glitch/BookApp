import 'package:BookApp/core/utils/assts.dart';
import 'package:BookApp/core/widgets/Icon_Loading_Animation.dart';
import 'package:BookApp/core/widgets/custom_error_message.dart';
import 'package:BookApp/features/search/presentation/view/widgets/suggest_search.dart';
import 'package:BookApp/features/search/presentation/view/widgets/Animated_Search.dart';
import 'package:BookApp/features/search/presentation/view_models/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfSuggest extends StatelessWidget {
  const ListOfSuggest({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSucces) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.books.length,
              itemBuilder: (BuildContext context, int index) {
                return Suggest(bookModels: state.books[index]);
              },
            ),
          );
        } else if (state is SearchFailure) {
          return CustomErrorMessage(errormessage: state.errormessage);
        } else if (state is SearchLoading) {
          return IconLoadingAnimation(icon: Image.asset(AssetsData.loading));
        } else {
          return AnimatedSearchHint();
        }
      },
    );
  }
}
