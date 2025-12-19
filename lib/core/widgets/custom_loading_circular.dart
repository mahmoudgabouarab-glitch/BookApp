import 'package:flutter/material.dart';

class CustomLoadingCircular extends StatelessWidget {
  const CustomLoadingCircular({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}
