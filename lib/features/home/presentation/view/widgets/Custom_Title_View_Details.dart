import 'package:BookApp/core/utils/assts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:BookApp/core/widgets/Icon_Loading_Animation.dart';
import 'package:BookApp/core/widgets/custom_error_message.dart';
import 'package:BookApp/features/home/presentation/view_models/simller_book_cubit/simller_books_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTitleViewDetails extends StatelessWidget {
  const CustomTitleViewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimllerBooksCubit, SimllerBooksState>(
      builder: (context, state) {
        if (state is SimllerBooksSucces) {
          return CarouselSlider.builder(
            itemCount: state.books.length-1,
            itemBuilder: (context, index, realIndex) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      imageUrl:
                          state
                              .books[index]
                              .volumeInfo
                              ?.imageLinks
                              ?.thumbnail ??
                          "",
                      fit: BoxFit.cover,
                      fadeInDuration: const Duration(milliseconds: 1000),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
              );
            },
            options: CarouselOptions(
              viewportFraction: .5,
              autoPlayCurve: Curves.easeInQuad,
              height: MediaQuery.of(context).size.height * 0.25,
            ),
          );
        } else if (state is SimllerBooksFailure) {
          return CustomErrorMessage(errormessage: state.errormessage);
        } else {
          return IconLoadingAnimation(icon: Image.asset(AssetsData.loading));
        }
      },
    );
  }
}
