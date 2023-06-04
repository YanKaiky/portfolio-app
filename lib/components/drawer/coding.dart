import 'package:flutter/material.dart';
import 'package:portfolio/components/drawer/animated.linear.progress.indicator.dart';
import 'package:portfolio/utils/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          label: 'JavaScript',
          percentage: 0.98,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'TypeScript',
          percentage: 0.93,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'HTML',
          percentage: 0.80,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'CSS',
          percentage: 0.74,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'Dart',
          percentage: 0.66,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'PHP',
          percentage: 0.26,
        ),
      ],
    );
  }
}
