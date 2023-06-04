// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  final double percentage;
  final String label;

  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: value,
                    color: AppColors.primary,
                    backgroundColor: AppColors.dark,
                  ),
                  Center(
                    child: Text(
                      '${(value * 100).toInt()}%',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  )
                ],
              );
            },
          ),
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
