import 'package:BookApp/features/home/data/models/book_models/book_models.dart';
import 'package:BookApp/features/home/presentation/view/widgets/details_view_body.dart';
import 'package:BookApp/features/home/presentation/view_models/simller_book_cubit/simller_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeDetailsView extends StatefulWidget {
  const HomeDetailsView({super.key, required this.bookModels});
  final BookModels bookModels;
  @override
  State<HomeDetailsView> createState() => _HomeDetailsViewState();
}

class _HomeDetailsViewState extends State<HomeDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimllerBooksCubit>(context).fetchsimllerbooks(
      category: widget.bookModels.volumeInfo?.categories?[0] ?? "",
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: DetailsViewBody(bookModels: widget.bookModels,));
  }
}
