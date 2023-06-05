import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          'responsive web and mobile App.',
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'complete e-Commerce App UI.',
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'Chat app with dark and light theme.',
          speed: const Duration(milliseconds: 60),
        ),
      ],
    );
  }
}
