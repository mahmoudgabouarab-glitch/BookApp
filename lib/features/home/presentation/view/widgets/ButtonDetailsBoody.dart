import 'package:BookApp/core/widgets/custom_Button.dart';
import 'package:BookApp/features/home/data/models/book_models/book_models.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonDetailsBoody extends StatelessWidget {
  const ButtonDetailsBoody({super.key, required this.bookModels});
  final BookModels bookModels;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          onPressed: () {},
          text: "Free",
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        CustomButton(
          onPressed: () async {
            Uri url = Uri.parse(bookModels.volumeInfo?.previewLink ?? "");
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
          text: 'preview',
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ],
    );
  }
}
