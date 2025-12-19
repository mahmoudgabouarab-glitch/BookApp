import 'package:BookApp/core/utils/assts.dart';
import 'package:BookApp/core/widgets/Icon_Loading_Animation.dart';
import 'package:BookApp/core/widgets/custom_error_message.dart';
import 'package:BookApp/features/home/presentation/view/widgets/best_seller_item.dart';
import 'package:BookApp/features/home/presentation/view_models/newest_book_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestsellarList extends StatelessWidget {
  const BestsellarList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSucces) {
         return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                child: BestSellerItem(bookModels: state.books[index]),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorMessage(errormessage: state.errormessage);
        } else {
          return IconLoadingAnimation(icon: Image.asset(AssetsData.loading));
        }
     
      },
    );
  }
}
