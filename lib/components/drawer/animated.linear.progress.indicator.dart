import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  final double percentage;
  final String label;

  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      color: AppColors.white,
                    ),
                  ),
                  Text('${(value * 100).toInt()}%')
                ],
              ),
              const SizedBox(height: defaultPadding),
              LinearProgressIndicator(
                value: value,
                color: AppColors.primary,
                backgroundColor: AppColors.dark,
              ),
            ],
          );
        },
      ),
    );
  }
}
