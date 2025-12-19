import 'package:flutter/material.dart';

class CustomAppBarr extends StatelessWidget implements PreferredSizeWidget {
  final String? logoPath;
  final String? titleText;
  final List<Widget>? actions;
  final double height;
  final void Function()? onPressed;

  const CustomAppBarr({
    super.key,
    this.logoPath,
    this.titleText,
    this.actions,
    this.height = kToolbarHeight,
    this.onPressed,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: logoPath != null
          ? Image.asset(logoPath!, height: 150, width: 150, fit: BoxFit.contain)
          : titleText != null
          ? Text(
              titleText!,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          : null,
      centerTitle: true,
      actions: actions,
    );
  }
}
