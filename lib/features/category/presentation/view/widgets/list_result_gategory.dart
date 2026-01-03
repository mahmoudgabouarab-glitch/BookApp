import 'package:BookApp/core/utils/assts.dart';
import 'package:BookApp/core/widgets/Icon_Loading_Animation.dart';
import 'package:BookApp/core/widgets/custom_error_message.dart';
import 'package:BookApp/features/category/presentation/view/widgets/custom_result_categort.dart';
import 'package:BookApp/features/category/presentation/view_models/cubit/result_category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListResultGategory extends StatelessWidget {
  const ListResultGategory({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResultCategoryCubit, ResultCategoryState>(
      builder: (context, state) {
        if (state is ResultCategorySucces) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.books.length,
              itemBuilder: (BuildContext context, int index) {
                return CustomResultCategort(bookModels: state.books[index]);
              },
            ),
          );
        } else if (state is ResultCategoryFailure) {
          return CustomErrorMessage(errormessage: state.errormessage);
        } else {
          return IconLoadingAnimation(icon: Image.asset(AssetsData.loading));
        }
      },
    );
  }
}
