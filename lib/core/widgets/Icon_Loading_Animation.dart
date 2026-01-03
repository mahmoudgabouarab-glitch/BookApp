import 'package:flutter/material.dart';

class IconLoadingAnimation extends StatefulWidget {
  final double size;
  final Widget icon;
  final Duration duration;

  const IconLoadingAnimation({
    super.key,
    required this.icon,
    this.size = 60.0,
    this.duration = const Duration(seconds: 2),
  });

  @override
  State<IconLoadingAnimation> createState() => _IconLoadingAnimationState();
}

class _IconLoadingAnimationState extends State<IconLoadingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotation;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..repeat(reverse: true);

    _rotation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));

    _scale = Tween<double>(
      begin: 0.8,
      end: 1.2,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: widget.size,
        height: widget.size,
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.rotate(
              angle: _rotation.value * 6.3, // 2 * pi
              child: Transform.scale(scale: _scale.value, child: widget.icon),
            );
          },
        ),
      ),
    );
  }
}
