import 'package:BookApp/core/utils/routers.dart';
import 'package:BookApp/core/utils/service_locator.dart';
import 'package:BookApp/features/home/data/repos/home_repo_impl.dart';
import 'package:BookApp/features/home/presentation/view_models/feature_book_cubit/features_books_cubit.dart';
import 'package:BookApp/features/home/presentation/view_models/newest_book_cubit/newest_books_cubit.dart';
import 'package:BookApp/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  setupSearchLocator();
  setupresultcategoryLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturesBooksCubit(getIt.get<HomeRepoImpl>())..fetchfeaturbooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchnewestbooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: GoTo.router,
        locale: Locale('en'),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.aBeeZeeTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
