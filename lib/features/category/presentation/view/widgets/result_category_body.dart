import 'package:BookApp/core/utils/service_locator.dart';
import 'package:BookApp/features/category/data/models/category_model.dart';
import 'package:BookApp/features/category/data/repos/result_category_repo_impl.dart';
import 'package:BookApp/features/category/presentation/view/widgets/list_result_gategory.dart';
import 'package:BookApp/features/category/presentation/view_models/cubit/result_category_cubit.dart';
import 'package:BookApp/features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ResultCategoryBody extends StatelessWidget {
  const ResultCategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    final category = GoRouterState.of(context).extra as CategoryModel;

    return BlocProvider(
      create: (context) => ResultCategoryCubit(
        getIt.get<ResultCategoryRepoImpl>(),
        quary: category.query,
      )..fetchresultBooks(),
      child: Scaffold(
        appBar: CustomAppBarr(titleText: category.title),
        body: Column(children: [ListResultGategory()]),
      ),
    );
  }
}
