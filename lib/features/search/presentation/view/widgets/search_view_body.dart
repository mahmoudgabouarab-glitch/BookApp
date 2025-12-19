import 'package:BookApp/core/utils/service_locator.dart';
import 'package:BookApp/features/search/data/repos/search_repo_impl.dart';
import 'package:BookApp/features/search/presentation/view/widgets/ListOfSuggest.dart';
import 'package:BookApp/features/search/presentation/view/widgets/customTextFiledSearch.dart';
import 'package:BookApp/features/search/presentation/view_models/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(getIt.get<SearchRepoImpl>()),
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: const [
            SizedBox(height: 20),
            CustomTextFiledSearch(),
            SizedBox(height: 20),
            ListOfSuggest(),
          ],
        ),
      ),
    );
  }
}
