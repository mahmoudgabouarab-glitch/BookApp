import 'package:BookApp/features/home/data/models/book_models/book_models.dart';

import 'package:flutter/material.dart';

class CustomViewDetailes extends StatelessWidget {
  const CustomViewDetailes({super.key, required this.bookModels});
  final BookModels bookModels;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.45,
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(
                bookModels.volumeInfo?.imageLinks?.thumbnail ?? "",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
