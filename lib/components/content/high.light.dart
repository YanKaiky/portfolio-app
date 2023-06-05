import 'package:flutter/material.dart';

import 'package:portfolio/components/content/animated.counter.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/responsive.dart';

class HighLight extends StatelessWidget {
  final AnimatedCounter counter;
  final String? label;

  const HighLight({
    Key? key,
    this.label,
    required this.counter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        const SizedBox(width: defaultPadding / 2),
        Text(
          label!,
          style: Responsive.isMobileLarge(context)
              ? const TextStyle(fontSize: 10)
              : Responsive.isMobile(context)
                  ? const TextStyle(fontSize: 8)
                  : Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
