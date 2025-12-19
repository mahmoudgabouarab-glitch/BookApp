import 'package:BookApp/core/utils/assts.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required AnimationController controller,
    required Animation<Offset> animation,
  }) : _controller = controller,
       _animation = animation;

  final AnimationController _controller;
  final Animation<Offset> _animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return SlideTransition(
          position: _animation,
          child: Center(child: Image.asset(AssetsData.logoPath)),
        );
      },
    );
  }
}
