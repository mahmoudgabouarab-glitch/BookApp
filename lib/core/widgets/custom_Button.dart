import 'package:BookApp/core/utils/constans.dart';
import 'package:BookApp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final void Function() onPressed;
  final String text;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;
 CustomButton({
    super.key,
    this.borderRadius,
    required this.onPressed,
    required this.text,
    required this.begin,
    required this.end,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 150,
      decoration: BoxDecoration(
        borderRadius:
            borderRadius ??
            BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
        gradient: LinearGradient(colors: linearBG, begin: begin, end: end),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.textStyle16.copyWith(color: Color(0xffffffff)),
        ),
      ),
    );
  }
}
