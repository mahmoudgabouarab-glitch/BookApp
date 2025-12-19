import 'package:BookApp/core/utils/constans.dart';
import 'package:BookApp/core/utils/service_locator.dart';
import 'package:BookApp/features/category/presentation/view/category_view.dart';
import 'package:BookApp/features/category/presentation/view/result_category.dart';
import 'package:BookApp/features/home/data/models/book_models/book_models.dart';
import 'package:BookApp/features/home/data/repos/home_repo_impl.dart';
import 'package:BookApp/features/home/presentation/view/home_details_view.dart';
import 'package:BookApp/features/home/presentation/view/home_view..dart';
import 'package:BookApp/features/home/presentation/view_models/simller_book_cubit/simller_books_cubit.dart';
import 'package:BookApp/features/search/presentation/view/search_view.dart';
import 'package:BookApp/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class GoTo {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(
        path: '/HomeView',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: HomeView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          transitionDuration: knavigator,
        ),
      ),
      GoRoute(
        path: '/HomeDetailsView',
        builder: (context, state) => BlocProvider(
          create: (context) => SimllerBooksCubit(getIt.get<HomeRepoImpl>()),
          child: HomeDetailsView(bookModels: state.extra as BookModels,),
        ),
      ),
      //GoRoute(path: '/HomeView', builder: (context, state) => HomeView()),
      GoRoute(path: '/SearchView', builder: (context, state) => SearchView()),
      GoRoute(path: '/CategoryView', builder: (context, state) => CategoryView()),
      GoRoute(path: '/ResultCategory', builder: (context, state) => ResultCategory()),
    ],
  );
}
