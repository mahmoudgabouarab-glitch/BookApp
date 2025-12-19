import 'dart:async';
import 'package:flutter/material.dart';

class AnimatedSearchHint extends StatefulWidget {
  const AnimatedSearchHint({super.key});

  @override
  State<AnimatedSearchHint> createState() => _AnimatedSearchHintState();
}

class _AnimatedSearchHintState extends State<AnimatedSearchHint> {
  final List<String> hints = [
    "Type the name of a book or author📚",
    "Discover a new book ✨"
  ];

  int currentIndex = 0;
  Timer? timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(const Duration(seconds: 4), (Timer t) {
      setState(() {
        currentIndex = (currentIndex + 1) % hints.length;
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.2),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: Text(
            hints[currentIndex],
            key: ValueKey<int>(currentIndex),
            style: const TextStyle(
              fontSize: 24,
              color: Colors.grey,
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
