import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/content/flutter.coded.text.dart';
import 'package:portfolio/utils/constants.dart';

class BuildAnimatedText extends StatelessWidget {
  const BuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          const FlutterCodedText(),
          const SizedBox(width: defaultPadding / 2),
          const Text('I build '),
          AnimatedTextKit(
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
          ),
          const SizedBox(width: defaultPadding / 2),
          const FlutterCodedText(last: true),
        ],
      ),
    );
  }
}
