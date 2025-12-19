import 'package:BookApp/core/utils/assts.dart';
import 'package:BookApp/features/category/presentation/view/widgets/CustomCategoryBody.dart';
import 'package:BookApp/features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarr(logoPath: AssetsData.appbarPath),
      body: CustomCategoryBody(),
    );
  }
}
