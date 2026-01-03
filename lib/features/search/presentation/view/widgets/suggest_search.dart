import 'package:BookApp/core/utils/assts.dart';
import 'package:BookApp/core/utils/constans.dart';
import 'package:BookApp/core/utils/styles.dart';
import 'package:BookApp/features/home/data/models/book_models/book_models.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Suggest extends StatelessWidget {
  const Suggest({super.key, required this.bookModels});
  final BookModels bookModels;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: linearBG,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Card(
          color: Colors.transparent,
          elevation: 0,
          child: ListTile(
            leading: Image.network(
              bookModels.volumeInfo?.imageLinks?.thumbnail ??
                  AssetsData.exceptionsearch,
            ),
            title: Text(
              bookModels.volumeInfo?.title ?? "",
              style: Styles.textStyle18,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              bookModels.volumeInfo?.authors?[0] ?? "NON",
              style: Styles.textStyle14.copyWith(color: Colors.grey[600]),
            ),
            trailing: IconButton(
              onPressed: () async {
                var url = Uri.parse(bookModels.volumeInfo?.previewLink ?? "");
                if (!await launchUrl(url)) {
                  throw Exception('Could not launch $url');
                }
              },
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ),
      ),
    );
  }
}
