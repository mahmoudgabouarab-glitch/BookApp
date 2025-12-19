import 'package:BookApp/core/utils/assts.dart';
import 'package:BookApp/core/widgets/custom_error_message.dart';
import 'package:BookApp/core/widgets/Icon_Loading_Animation.dart';
import 'package:BookApp/features/home/presentation/view_models/feature_book_cubit/features_books_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomTitleView extends StatelessWidget {
  const CustomTitleView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturesBooksCubit, FeaturesBooksState>(
      builder: (context, state) {
        if (state is FeaturesBooksSucces) {
          return CarouselSlider.builder(
            itemCount: 10,
            itemBuilder: (context, index, realIndex) {
              return GestureDetector(
                onTap: () {
                  GoRouter.of(
                    context,
                  ).push("/HomeDetailsView", extra: state.books[index]);
                },
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  child: CachedNetworkImage(
                    width: MediaQuery.of(context).size.width,
                    imageUrl:
                        state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                        "",
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    fadeInDuration: Duration(milliseconds: 1000),

                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            options: CarouselOptions(
              enlargeCenterPage: true,
              viewportFraction: 0.5,
              autoPlayCurve: Curves.easeInQuad,
              height: MediaQuery.of(context).size.height * 0.30,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
            ),
          );
        } else if (state is FeaturesBooksFailure) {
          return CustomErrorMessage(errormessage: state.errormessage);
        } else {
          return IconLoadingAnimation(icon: Image.asset(AssetsData.loading));
        }
      },
    );
  }
}
