
import 'package:flutter/material.dart';

class TextAnimationBuilder extends StatelessWidget {
  const TextAnimationBuilder({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      // عشان يعيد بناء الويدجيت دى بس
      animation: slidingAnimation,
      builder: (context, v) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text("Read Free Books", textAlign: TextAlign.center),
        );
      },
    );
  }
}
