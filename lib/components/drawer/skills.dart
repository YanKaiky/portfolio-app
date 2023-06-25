import 'package:flutter/material.dart';
import 'package:portfolio/components/drawer/animated.circular.progress.indicator.dart';
import 'package:portfolio/utils/constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: defaultPadding,
          ),
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: const [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                label: 'NodeJS',
                percentage: 0.92,
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                label: 'ReacJS',
                percentage: 0.87,
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                label: 'Flutter',
                percentage: 0.57,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
