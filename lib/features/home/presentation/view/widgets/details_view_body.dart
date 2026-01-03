import 'package:BookApp/core/utils/styles.dart';
import 'package:BookApp/features/home/data/models/book_models/book_models.dart';
import 'package:BookApp/features/home/presentation/view/widgets/ButtonDetailsBoody.dart';
import 'package:BookApp/features/home/presentation/view/widgets/Custom_Title_View_Details.dart';
import 'package:BookApp/features/home/presentation/view/widgets/custom_view_detailes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.bookModels});
  final BookModels bookModels;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomViewDetailes(bookModels: bookModels),
            SizedBox(height: 20),
            Text(bookModels.volumeInfo!.title!, style: Styles.textStyle24),
            SizedBox(height: 5),
            Text(
              bookModels.volumeInfo?.authors?[0] ?? "",
              style: Styles.textStyle20.copyWith(color: Colors.grey[700]),
            ),
            SizedBox(height: 5),
            //  RateCustum(),
            SizedBox(height: 25),
            ButtonDetailsBoody(bookModels: bookModels),
            SizedBox(height: 25),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                child: Text(
                  "You might be interested in",
                  style: Styles.textStyle18,
                ),
              ),
            ),
            SizedBox(height: 20),
            CustomTitleViewDetails(),
          ],
        ),
      ),
    );
  }
}
