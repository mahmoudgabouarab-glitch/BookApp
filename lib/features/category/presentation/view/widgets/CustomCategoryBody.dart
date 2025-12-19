import 'package:BookApp/core/utils/constans.dart';
import 'package:BookApp/core/utils/styles.dart';
import 'package:BookApp/features/category/data/models/category_model.dart';
import 'package:BookApp/features/category/data/models/coustom_category_app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomCategoryBody extends StatefulWidget {
  const CustomCategoryBody({super.key});

  @override
  State<CustomCategoryBody> createState() => _CustomCategoryBodyState();
}

class _CustomCategoryBodyState extends State<CustomCategoryBody> {
  @override
  Widget build(BuildContext context) {
   final List<CategoryModel> category = categoryapp(context);
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsetsGeometry.all(2),
      itemCount: category.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, i) {
       final categoryItem = category[i];
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: linearCATE),
            borderRadius: BorderRadius.circular(20),
          ),
          child: InkWell(
            onTap: () {
              GoRouter.of(context).push("/ResultCategory", extra: categoryItem);
            },
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    child: Image.asset(
                      categoryItem.image,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      categoryItem.title,
                      style: Styles.textStyle16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
