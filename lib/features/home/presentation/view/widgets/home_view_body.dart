import 'package:BookApp/core/utils/assts.dart';
import 'package:BookApp/core/utils/styles.dart';
import 'package:BookApp/features/home/presentation/view/widgets/best_seller_list.dart';
import 'package:BookApp/features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:BookApp/features/home/presentation/view/widgets/custom_navigation_tab_bar.dart';
import 'package:BookApp/features/home/presentation/view/widgets/custom_title_view.dart';
import 'package:BookApp/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarr(logoPath: AssetsData.appbarPath),
      body: Stack(
        children: [
          CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    CustomTitleView(),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        S.of(context).bestsellar,
                        style: Styles.textStyle24,
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              const SliverToBoxAdapter(child: BestsellarList()),
            ],
          ),
          CustomNavigationTabBar(),
        ],
      ),
    );
  }
}
