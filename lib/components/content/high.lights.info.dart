import 'package:flutter/material.dart';
import 'package:portfolio/components/content/animated.counter.dart';
import 'package:portfolio/components/content/high.light.dart';
import 'package:portfolio/utils/constants.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          HighLight(
            counter: AnimatedCounter(value: 30, text: '+'),
            label: 'GitHub Projects',
          ),
          HighLight(
            counter: AnimatedCounter(value: 700, text: '+'),
            label: 'LinkedIn Connections',
          ),
          HighLight(
            counter: AnimatedCounter(value: 600, text: '+'),
            label: 'Instagram Followers',
          ),
        ],
      ),
    );
  }
}
