import 'package:BookApp/core/utils/constans.dart';
import 'package:BookApp/core/utils/styles.dart';
import 'package:BookApp/features/home/data/models/book_models/book_models.dart';
import 'package:BookApp/features/home/presentation/view/widgets/custom_item_best_seller.dart';
import 'package:BookApp/features/home/presentation/view/widgets/rate_custum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.bookModels});
  final BookModels bookModels;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push("/HomeDetailsView", extra: bookModels);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomItemBestSeller(
            imageUrl: bookModels.volumeInfo?.imageLinks?.thumbnail ?? "",
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    bookModels.volumeInfo?.title ?? "",
                    style: Styles.textStyle16,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  bookModels.volumeInfo?.authors?.join(', ') ??
                      'Unknown Author',
                  style: Styles.textStyle14.copyWith(color: Colors.grey[700]),
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Text(
                      bookModels.volumeInfo?.publishedDate ?? "",
                      style: Styles.textStyle16.copyWith(color: pricecolor),
                    ),
                    Spacer(),
                    RateCustum(
                      rate: bookModels.volumeInfo?.pageCount?? 0,
                     
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
