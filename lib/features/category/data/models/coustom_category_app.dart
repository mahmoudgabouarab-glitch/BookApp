import 'package:BookApp/core/utils/assts.dart';
import 'package:BookApp/features/category/data/models/category_model.dart';
import 'package:BookApp/generated/l10n.dart';
import 'package:flutter/material.dart';

List<CategoryModel> categoryapp(BuildContext context) {
  return [
    CategoryModel(
      title: S.of(context).SpanishBooks,
      image: AssetsData.spain,
      query: 'spanish',
    ),
    CategoryModel(
      title: S.of(context).ArabicBooks,
      image: AssetsData.arabic,
      query: 'عربي',
    ),
    CategoryModel(
      title: S.of(context).EnglishBooks,
      image: AssetsData.english,
      query: 'english',
    ),
    CategoryModel(
      title: S.of(context).FrenchBooks,
      image: AssetsData.france,
      query: 'french',
    ),
    CategoryModel(
      title: S.of(context).GermanBooks,
      image: AssetsData.germany,
      query: 'german',
    ),
    CategoryModel(
      title: S.of(context).HindiBooks,
      image: AssetsData.indian,
      query: 'hindi',
    ),
    CategoryModel(
      title: S.of(context).RussianBooks,
      image: AssetsData.russia,
      query: 'russian',
    ),
    CategoryModel(
      title: S.of(context).ChineseBooks,
      image: AssetsData.china,
      query: 'chinese',
    ),
  ];
}
