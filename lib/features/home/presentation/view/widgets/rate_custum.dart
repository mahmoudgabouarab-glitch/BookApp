import 'package:flutter/material.dart';

class RateCustum extends StatelessWidget {
  const RateCustum({super.key, required this.rate});
final int rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Icon(Icons.star, color: Colors.amber, size: 18,),
        //SizedBox(width: 1),
        Text("pages $rate"),
        //SizedBox(width: 5),
        // Text(
        //   count,
        //   style: Styles.textStyle10.copyWith(color: Colors.grey[500]),
        // ),
      ],
    );
  }
}
