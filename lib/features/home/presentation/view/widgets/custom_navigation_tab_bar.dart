import 'package:BookApp/core/utils/constans.dart';
import 'package:BookApp/core/utils/styles.dart';
import 'package:BookApp/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomNavigationTabBar extends StatelessWidget {
  const CustomNavigationTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 25),
        height: 60,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: linearBNB,
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ),

          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(242, 85, 85, 85),
              blurRadius: 10,
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      GoRouter.of(context).push("/HomeView");
                    },
                    icon: Icon(Icons.home, color: Colors.white),
                  ),
                ),
                Text(S.of(context).home, style: Styles.textStyle15),
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      GoRouter.of(context).push("/SearchView");
                    },
                    icon: Icon(Icons.search, color: Colors.white),
                  ),
                ),
                Text(S.of(context).search, style: Styles.textStyle15),
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      GoRouter.of(context).push("/CategoryView");
                    },
                    icon: Icon(Icons.sort, color: Colors.white),
                  ),
                ),
                Text(S.of(context).category, style: Styles.textStyle15),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
